*** Settings ***

Library           OperatingSystem
Library           Process

*** Variables ***

${PATH}    ${EXECDIR}

*** Tasks ***

CUSTOM RUNNER START : This helps avoid skipping the first actual automated check in the runner file.
    Log    This runs first.
    [Tags]    Start

RPA TASK 1 - TASK RUNNER : Set up the Docker Containers for running Robot Framework automation.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 1 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 2 - TASK RUNNER : Start the Docker Container that will perform API checks.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 2 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 3 - TASK RUNNER : Start the Docker Container that will perform checks on a website using Selenium.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 3 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 4 - TASK RUNNER : Start the Docker Container that will perform API checks.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 5 - TASK RUNNER : Start the Docker Container that will perform checks on a website using Selenium.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 6 - TASK RUNNER : Clean up Docker Images and remove any Docker Containers that are still running.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Check_

RPA TASK 7 - TASK RUNNER : Gather all result logs and send a Slack notification.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About The Automation Run Result    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Check_

*** Keywords ***

Build Docker Containers

Clean Up Docker Containers

Start Remote API Check Process Webhook Docker Container

Start Remote Selenium Process Webhook Container

Trigger Remote API Check Process Webhook Docker Container

Trigger Remote Selenium Process Webhook Container

Slack_Notification_Send_All

Send Detailed Message Through Slack About The Automation Run Result
    ## There are various solutions out there for sending Slack messages through its API. Here are some examples.
    ##
    ## robot-framework-slack-notifier is a cross-platform solution...
    ## https://github.com/Ville-/robot-framework-slack-notifier
    ##
    ## slacktee is a very simple to use Slack client that you can use to pipe text into Slack channels...
    ## https://github.com/coursehero/slacktee
    ##
    ## The folowing keyword will demonstrate slacktee...
    [Arguments]    ${TASK_NAME}    ${TASK_ENVIRONMENT}
    Run Process    echo "${TASK_NAME} ran in the ${TASK_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${EXECDIR}/.slacktee    shell=True    timeout=20s    on_timeout=continue
