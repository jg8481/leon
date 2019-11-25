*** Settings ***

Library           OperatingSystem
Library           Process

*** Variables ***

${PATH}    ${EXECDIR}

*** Test Cases ***

CUSTOM RUNNER START : This helps avoid skipping the first actual step in the runner file.
    Log    This runs first.
    [Tags]    Start

TEST 1 - PARALLEL RUNNER 2 : A test that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About This Test    TEST 1 - PARALLEL RUNNER 2    QA
    [Tags]    Group_One

TEST 2 - PARALLEL RUNNER 2 : A test that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About This Test    TEST 2 - PARALLEL RUNNER 2    QA
    [Tags]    Group_Two

TEST 3 - PARALLEL RUNNER 2 : A test that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About This Test    TEST 3 - PARALLEL RUNNER 2    QA
    [Tags]    Group_Three

TEST 4 - PARALLEL RUNNER 2 : A test that will run.
    Log    Just giving Robot Framework something to do when triggered by the voice assistant.
    #Send Detailed Message Through Slack About This Test    TEST 4 - PARALLEL RUNNER 2    QA
    [Tags]    Group_Four

*** Keywords ***

Send Detailed Message Through Slack About This Test
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
    Run Process    echo "${TEST_NAME} ran in the ${TEST_ENVIRONMENT} environment..." | slacktee.sh -i :nerd_face: --plain-text --config ${EXECDIR}/.slacktee    shell=True    timeout=20s    on_timeout=continue
