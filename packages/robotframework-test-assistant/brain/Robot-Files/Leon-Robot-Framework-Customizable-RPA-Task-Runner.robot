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
    Send Short Message Through Slack About The Automation Run    RPA TASK 1 - TASK RUNNER   QA
    [Tags]    Build_Docker_Containers

RPA TASK 2 - TASK RUNNER : Start the Docker Container that will perform API checks.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 2 - TASK RUNNER   QA
    [Tags]    Start_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 3 - TASK RUNNER : Start the Docker Container that will perform checks on a website using Selenium.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 3 - TASK RUNNER   QA
    [Tags]    Start_Remote_Selenium_Process_Webhook_Docker_Container

RPA TASK 4 - TASK RUNNER : Trigger the automation in the Docker Container that will perform API checks.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 4 - TASK RUNNER   QA
    [Tags]    Trigger_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 5 - TASK RUNNER : Trigger the automation in the Docker Container that will perform checks on a website using Selenium.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 5 - TASK RUNNER   QA
    [Tags]    Trigger_Remote_Selenium_Process_Webhook_Container

RPA TASK 6 - TASK RUNNER : Trigger the automation in the both Docker Containers that will perform parallel running checks.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 6 - TASK RUNNER   QA
    [Tags]    Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run

RPA TASK 7 - TASK RUNNER : Clean up Docker Images and remove any Docker Containers that are still running.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 7 - TASK RUNNER   QA
    [Tags]    Clean_Up_Docker_Containers

RPA TASK 8 - TASK RUNNER : Gather all result console logs and send a Slack notification.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    RPA TASK 8 - TASK RUNNER   QA
    [Tags]    Slack_Notification_Send_All

*** Keywords ***

Build Docker Containers
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Build-Docker-Containers

Start Remote API Check Process Webhook Docker Container
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Start-Remote-API-Check-Process-Webhook-Docker-Container

Start Remote Selenium Process Webhook Container
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Start-Remote-Selenium-Process-Webhook-Docker-Container

Trigger Remote API Check Process Webhook Docker Container
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Trigger-Remote-API-Check-Process-Webhook-Docker-Container

Trigger Remote Selenium Process Webhook Container
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Trigger-Remote-Selenium-Process-Webhook-Docker-Container

Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && ./robotframework-runner.sh Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run

Clean Up Docker Containers
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cd "$PACKAGES_PATH" && /robotframework-runner.sh Clean-Up-Docker-Containers

Slack Notification Send All
    Run   PROJECT_PATH=$(pwd) && PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant" && cat "$PACKAGES_PATH"/Log-Files/*.txt | slacktee.sh -i :nerd_face: --plain-text --config "$PROJECT_PATH"/packages/robotframework-test-assistant/.slacktee > /dev/null 2>&1

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
    Run Process    echo "${TASK_NAME} ran in the ${TASK_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${EXECDIR}/.slacktee    shell=True    timeout=20s    on_timeout=continue
