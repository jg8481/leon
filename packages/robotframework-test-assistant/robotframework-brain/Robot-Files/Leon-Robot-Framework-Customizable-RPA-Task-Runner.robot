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
    Send Short Message Through Slack About The Automation Run    RPA TASK 1 - This task built several Docker Containers - TASK RUNNER    QA
    [Tags]    Build_Docker_Containers

RPA TASK 2 - TASK RUNNER : Start the Docker Container that will perform API checks.
    Start Remote API Check Process Webhook Docker Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 2 - This task started a Remote API Check Process Webhook Docker Container - TASK RUNNER    QA
    [Tags]    Start_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 3 - TASK RUNNER : Start the Docker Container that will perform checks on a website using Selenium.
    Start Remote Selenium Process Webhook Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 3 - This task started a Remote Selenium Process Webhook Container - TASK RUNNER    QA
    [Tags]    Start_Remote_Selenium_Process_Webhook_Docker_Container

RPA TASK 4 - TASK RUNNER : Trigger the automation in the Docker Container that will perform API checks.
    Trigger Remote API Check Process Webhook Docker Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 4 - This task triggered a Remote API Check Process Webhook Docker Container - TASK RUNNER    QA
    [Tags]    Trigger_Remote_API_Check_Process_Webhook_Docker_Container

RPA TASK 5 - TASK RUNNER : Trigger the automation in the Docker Container that will perform checks on a website using Selenium.
    Trigger Remote Selenium Process Webhook Container
    Send Short Message Through Slack About The Automation Run    RPA TASK 5 - This task triggered a Remote Selenium Process Webhook Container - TASK RUNNER    QA
    [Tags]    Trigger_Remote_Selenium_Process_Webhook_Container

RPA TASK 6 - TASK RUNNER : Trigger the automation in both Docker Containers that will perform parallel running checks.
    Trigger Both Webhook Docker Containers For Parallel Run
    Send Short Message Through Slack About The Automation Run    RPA TASK 6 - This task triggered both Webhook Docker Containers for a parallel run - TASK RUNNER    QA
    [Tags]    Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run

RPA TASK 7 - TASK RUNNER : Run the Bug Risk Prediction Docker Container that will show possible bug hotspots and assign risk scores to specific Git commits in a given GitHub repo.
    Generate Bug Risk Prediction Scores For A GitHub Repo
    Send Short Message Through Slack About The Automation Run    RPA TASK 7 - This task started a Docker Container that generated Bug Risk Prediction Scores for a GitHub repo - TASK RUNNER    QA
    [Tags]    Generate_Bug_Risk_Prediction_Scores_For_A_GitHub_Repo

RPA TASK 8 - TASK RUNNER : Clean up Docker Images and remove any Docker Containers that are still running.
    Clean Up Docker Containers
    Send Short Message Through Slack About The Automation Run    RPA TASK 8 - This task stopped and cleaned up some Docker Containers - TASK RUNNER    QA
    [Tags]    Clean_Up_Docker_Containers

RPA TASK 9 - TASK RUNNER : Gather all result console logs and send a Slack notification.
    Slack Notification Send All
    Send Short Message Through Slack About The Automation Run    RPA TASK 9 - This task sent a Slack notification to the team's channel - TASK RUNNER    QA
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

Trigger Both Webhook Docker Containers For Parallel Run
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Generate Bug Risk Prediction Scores For A GitHub Repo
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}
    Run Keyword And Ignore Error    Analyze The Bug Risk Prediction Scores

Clean Up Docker Containers
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Clean-Up-Docker-Containers    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Slack Notification Send All
    ${RESULT}=    Run Process     ${TASK_RUNNER_PATH}/robotframework-runner.sh Slack-Notification-Send-All    shell=True    stderr=STDOUT
    Log 	all output: ${RESULT.stdout}

Analyze The Bug Risk Prediction Scores
    ${BUG_RISK_PREDICTION_SCORES}    Get File    ${TASK_RUNNER_PATH}/robotframework-brain/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
    Set Suite Variable     ${BUG_RISK_PREDICTION_SCORES}
    ${BUG_SCORE_ANALYSIS}=    Run Keyword And Return Status    Should Not Contain Any    ${BUG_RISK_PREDICTION_SCORES}    bug score of 0.1    bug score of 0.2    bug score of 0.3    bug score of 0.4    bug score of 0.5    bug score of 0.6    bug score of 0.7    bug score of 0.8    bug score of 0.9    bug score of 1.0
    Run Keyword If    '${BUG_SCORE_ANALYSIS}' == 'False'    Run Process    echo "WARNING! - RPA TASK 7 detected a Git commit bug score(s) of 0.1 or more for the given GitHub repo." | slacktee.sh -i :nerd_face: --plain-text --config ${SLACK_CONFIG_PATH}    shell=True    timeout=20s    on_timeout=continue
    Log    ${BUG_RISK_PREDICTION_SCORES}

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
    Run Process    echo "${TASK_NAME} ran in the ${TASK_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${SLACK_CONFIG_PATH}    shell=True    timeout=20s    on_timeout=continue
