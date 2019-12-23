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
    Build Docker Containers
    Send Short Message Through Slack About The Automation Run    RPA TASK 1 - TASK RUNNER   QA
    [Tags]    Build_Docker_Containers

RPA TASK 2 - TASK RUNNER : Start the Docker Container that will perform API checks.
    Start Remote API Check Process Webhook Docker Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 2 - TASK RUNNER   QA
    [Tags]    Start_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 3 - TASK RUNNER : Start the Docker Container that will perform checks on a website using Selenium.
    Start Remote Selenium Process Webhook Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 3 - TASK RUNNER   QA
    [Tags]    Start_Remote_Selenium_Process_Webhook_Docker_Container

RPA TASK 4 - TASK RUNNER : Trigger the automation in the Docker Container that will perform API checks.
    Trigger Remote API Check Process Webhook Docker Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Trigger_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 5 - TASK RUNNER : Trigger the automation in the Docker Container that will perform checks on a website using Selenium.
    Trigger Remote Selenium Process Webhook Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 5 - TASK RUNNER   QA
    [Tags]    Trigger_Remote_Selenium_Process_Webhook_Container

RPA TASK 6 - TASK RUNNER : Trigger the automation in the both Docker Containers that will perform parallel running checks.
    Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run
    Send Short Message Through Slack About The Automation Run    RPA TASK 6 - TASK RUNNER   QA
    [Tags]    Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run

RPA TASK 7 - TASK RUNNER : Clean up Docker Images and remove any Docker Containers that are still running.
    Clean Up Docker Containers
    Send Short Message Through Slack About The Automation Run    RPA TASK 7 - TASK RUNNER   QA
    [Tags]    Clean_Up_Docker_Containers

RPA TASK 8 - TASK RUNNER : Gather all result console logs and send a Slack notification.
    Slack Notification Send All
    Send Short Message Through Slack About The Automation Run    RPA TASK 8 - TASK RUNNER   QA
    [Tags]    Slack_Notification_Send_All

*** Keywords ***

Build Docker Containers
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Build-Docker-Containers    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Start Remote API Check Process Webhook Docker Container
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Start-Remote-API-Check-Process-Webhook-Docker-Container    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Start Remote Selenium Process Webhook Container
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Start-Remote-Selenium-Process-Webhook-Docker-Container    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Trigger Remote API Check Process Webhook Docker Container
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Trigger-Remote-API-Check-Process-Webhook-Docker-Container    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Trigger Remote Selenium Process Webhook Container
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Trigger-Remote-Selenium-Process-Webhook-Docker-Container    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Clean Up Docker Containers
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Clean-Up-Docker-Containers    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Slack Notification Send All
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Slack-Notification-Send-All    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Send Short Message Through Slack About The Automation Run
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
    Run Process    echo "${TASK_NAME} ran in the ${TASK_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${TASK_RUNNER_PATH}/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee    shell=True    timeout=20s    on_timeout=continue
