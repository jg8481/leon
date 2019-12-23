*** Settings ***

Library           OperatingSystem
Library           Process

*** Variables ***

${PATH}    ${EXECDIR}

*** Test Cases ***

CUSTOM RUNNER START : This helps avoid skipping the first actual automated check in the runner file.
    Log    This runs first.
    [Tags]    Start

AUTOMATED CHECK 1 - SERIAL RUNNER : An automated check that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    AUTOMATED CHECK 1 - SERIAL RUNNER   QA
    [Tags]    Check_One

AUTOMATED CHECK 2 - SERIAL RUNNER : An automated check that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    AUTOMATED CHECK 2 - SERIAL RUNNER   QA
    [Tags]    Check_Two

AUTOMATED CHECK 3 - SERIAL RUNNER : An automated check that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    AUTOMATED CHECK 3 - SERIAL RUNNER   QA
    [Tags]    Check_Three

AUTOMATED CHECK 4 - SERIAL RUNNER : An automated check that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    Send Short Message Through Slack About The Automation Run    AUTOMATED CHECK 4 - SERIAL RUNNER   QA
    [Tags]    Check_Four

*** Keywords ***

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
    [Arguments]    ${TEST_NAME}    ${TEST_ENVIRONMENT}
    Run Process    echo "${TEST_NAME} ran in the ${TEST_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${SLACK_CONFIG_PATH}/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee    shell=True    timeout=20s    on_timeout=continue
