#!/bin/bash

PROJECT_PATH=$(pwd)
export PROJECT_PATH
PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant/robotframework-brain"
export PACKAGES_PATH
SLACK_CONFIG_PATH="$PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee"
export SLACK_CONFIG_PATH

if [ "$1" == "Clean-Up-Results" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/*.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/*
  rm -rf ./combined-leon-robot-framework-assistant-results-log.html
fi

if [ "$1" == "Check-One" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-One task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Check_One --report NONE --log check-one-log.html --output check-one-output.xml -N "Check One - One Robot Framework file that runs in serial" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
fi

if [ "$1" == "Check-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Check_Two --report NONE --log check-two-log.html --output check-two-output.xml -N "Check Two - One Robot Framework file that runs in serial" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
fi

if [ "$1" == "Check-Three" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Three task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Check_Three --report NONE --log check-three-log.html --output check-three-output.xml -N "Check Three - One Robot Framework file that runs in serial" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-Three task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
fi

if [ "$1" == "Check-Four" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Four task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Check_Four --report NONE --log check-four-log.html --output check-four-output.xml -N "Check Four - One Robot Framework file that runs in serial" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-Four task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
fi

if [ "$1" == "Set-Up-Runner-One" ]; then
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  touch "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  echo "Start" > "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-One" ]; then
  echo "Check_One" >> "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Two" ]; then
  echo "Check_Two" >> "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Three" ]; then
  echo "Check_Three" >> "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Four" ]; then
  echo "Check_Four" >> "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-One" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Runner-One task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  while IFS=, read -r SERIALRUNNER
  do
    TIMESTAMPER_CUSTOM_RUNNER_ONE=$(date)
    robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include "${SERIALRUNNER}" --report NONE --output custom-serial-automation-run-ouput-"${SERIALRUNNER}".xml --log custom-serial-automation-run-"${SERIALRUNNER}".html --timestampoutputs -N "${SERIALRUNNER} ${TIMESTAMPER_CUSTOM_RUNNER_ONE}" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt &&
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run in a manually constructed sequence set up through leon-ai with a CustomSerialAutomationRunnerFile.csv file" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-results-log.html --output "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-*.xml >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-ouput-Start*.xml
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-*.html
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  TIMESTAMP2=$(date)
  echo "This Custom-Runner-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
fi

if [ "$1" == "Display-Runner-One" ]; then
  open "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-results-log.html
fi

if [ "$1" == "Group-One" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-One task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  pabot --verbose --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Group_One --report NONE --log group-one-log.html --output group-one-output.xml -N "Group One - Two parallel running Robot Framework files" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
fi

if [ "$1" == "Group-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  pabot --verbose --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Group_Two --report NONE --log group-two-log.html --output group-two-output.xml -N "Group Two - Two parallel running Robot Framework files" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
fi

if [ "$1" == "Group-Three" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Three task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  pabot --verbose --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Group_Three --report NONE --log group-three-log.html --output group-three-output.xml -N "Group Three - Two parallel running Robot Framework files" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-Three task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
fi

if [ "$1" == "Group-Four" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Four task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  pabot --verbose --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include Group_Four --report NONE --log group-four-log.html --output group-four-output.xml -N "Group Four - Two parallel running Robot Framework files" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-Four task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
fi

if [ "$1" == "Set-Up-Runner-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  touch "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  echo "Start" > "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-One" ]; then
  echo "Group_One" >> "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Two" ]; then
  echo "Group_Two" >> "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Three" ]; then
  echo "Group_Three" >> "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Four" ]; then
  echo "Group_Four" >> "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-*.html
  touch "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Runner-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  while IFS=, read -r PARALLELRUNNER
  do
    TIMESTAMPER_CUSTOM_RUNNER_TWO=$(date)
    pabot --verbose --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --include "${PARALLELRUNNER}" --report NONE --output custom-parallel-automation-run-ouput-"${PARALLELRUNNER} ${TIMESTAMPER_CUSTOM_RUNNER_TWO}".xml --log custom-parallel-automation-run-"${PARALLELRUNNER}".html --timestampoutputs -N "${PARALLELRUNNER} ${TIMESTAMPER_CUSTOM_RUNNER_TWO}" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt &&
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-ouput-Start*.xml
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-Start-*.html
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  TIMESTAMP2=$(date)
  echo "This Custom-Runner-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
fi

if [ "$1" == "Display-Runner-Two" ]; then
  open "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-*.html
fi

if [ "$1" == "Slack-Notification-Send-All" ]; then
  cat "$PACKAGES_PATH"/Log-Files/*.txt | slacktee.sh -i :nerd_face: --plain-text --plain-text --config "$SLACK_CONFIG_PATH" > /dev/null 2>&1
fi

if [ "$1" == "Build-Docker-Containers" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  TIMESTAMP1=$(date)
  echo "This Build-Docker-Containers task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Build-Images-Teardown-Old-Docker-Containers > /dev/null 2>&1 && exit 0"
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning && docker-compose build && docker-compose up > /dev/null 2>&1 && docker images && exit 0" >> "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  TIMESTAMP2=$(date)
  echo "This Build-Docker-Containers task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
fi

if [ "$1" == "Clean-Up-Docker-Containers" ]; then
  docker stop $(docker ps -a -q) > /dev/null 2>&1
  docker rm $(docker ps -a -q) > /dev/null 2>&1
  docker image prune --force > /dev/null 2>&1
fi

if [ "$1" == "Robot-Framework-Docker-API-Checks" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt
  TIMESTAMP1=$(date)
  echo "This Robot-Framework-Docker-API-Checks task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Part-One-Requests-Library-Workshop-Examples > /dev/null 2>&1 && exit 0"
  cat "$PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/pabot_results/Robot Framework test run with Requests Library in parallel.Docker-Example-Requests-Library1/robot_stdout.out" >> "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt &&
  cat "$PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/pabot_results/Robot Framework test run with Requests Library in parallel.Docker-Example-Requests-Library2/robot_stdout.out" >> "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt
  TIMESTAMP2=$(date)
  echo "This Robot-Framework-Docker-API-Checks task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Part-One-Requests-Library-Workshop-Examples-Log.txt
fi

if [ "$1" == "Robot-Framework-Docker-Random-Order-API-Checks" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt
  TIMESTAMP1=$(date)
  echo "This Robot-Framework-Docker-Random-Order-API-Checks task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Part-Two-Python-Library-Workshop-Examples > /dev/null 2>&1 && exit 0"
  cat "$PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/pabot_results/Robot Framework test run with user-created Python Library in parallel.Docker-Example-Python-Library1-Enhanced-Version/robot_stdout.out" >> "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt &&
  cat "$PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/pabot_results/Robot Framework test run with user-created Python Library in parallel.Docker-Example-Python-Library2-Enhanced-Version/robot_stdout.out" >> "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt
  TIMESTAMP2=$(date)
  echo "This Robot-Framework-Docker-Random-Order-API-Checks task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Part-Two-Python-Library-Workshop-Examples-Log.txt
fi

if [ "$1" == "Robot-Framework-Docker-MBT-Graphwalker-Checks" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Long-Graphwalker-Run-Workshop-Example-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Long-Graphwalker-Run-Workshop-Example-Log.txt
  TIMESTAMP1=$(date)
  echo "This Robot-Framework-Docker-MBT-Graphwalker-Checks task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Long-Graphwalker-Run-Workshop-Example-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Long-Graphwalker-Run-Workshop-Example > /dev/null 2>&1 && exit 0"
  TIMESTAMP2=$(date)
  echo "This Robot-Framework-Docker-MBT-Graphwalker-Checks task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Long-Graphwalker-Run-Workshop-Example-Log.txt
  echo "The results of the Robot-Framework-Docker-MBT-Graphwalker-Checks task can be found in this html log file-> $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-run.html" >> "$PACKAGES_PATH"/Log-Files/Long-Graphwalker-Run-Workshop-Example-Log.txt
fi

if [ "$1" == "Display-MBT-Graphwalker-Results" ]; then
  open "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-run.html
fi

if [ "$1" == "Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again-Log.txt
  TIMESTAMP1=$(date)
  echo "This Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Previous-Long-Graphwalker-Run-Workshop-Example > /dev/null 2>&1 && exit 0"
  TIMESTAMP2=$(date)
  echo "This Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again-Log.txt
  echo "The results of the Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task can be found in this html log file-> $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-reuse-previous-path-file.html" >> "$PACKAGES_PATH"/Log-Files/Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again-Log.txt
fi

if [ "$1" == "Robot-Framework-Selenium-Desktop-Web-Checks" ]; then
  chmod -R 755 "$PROJECT_PATH"/bridges/python/.venv > /dev/null 2>&1
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-local-machine-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  TIMESTAMP1=$(date)
  echo "This Robot-Framework-Selenium-Desktop-Web-Checks task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-local-machine-example-workflows-for-workshop.sh Robot-Framework-Desktop-Web-Test-Example" >> "$PACKAGES_PATH"/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  TIMESTAMP2=$(date)
  echo "This Robot-Framework-Selenium-Desktop-Web-Checks task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Robot-Framework-Desktop-Web-Log.txt
fi

if [ "$1" == "Start-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-local-machine-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  TIMESTAMP1=$(date)
  TIME_LOGGER=$(echo "This Start-Remote-API-Check-Process-Webhook-Docker-Container task was started by leon-ai on $TIMESTAMP1.")
  sleep 2s &&
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && nohup ./start-specific-docker-example-workflows-for-workshop.sh Remote-Test-Process-Triggered-By-A-Webhook-Docker-Example >> $PACKAGES_PATH/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt & exit 0" >> "$PACKAGES_PATH"/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt &> /dev/null
  sleep 2s &&
  TIMESTAMP2=$(date)
  echo "$TIME_LOGGER" >>  "$PACKAGES_PATH"/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  echo "This Start-Remote-API-Check-Process-Webhook-Docker-Container task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Start-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
fi

if [ "$1" == "Start-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-local-machine-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  TIMESTAMP1=$(date)
  TIME_LOGGER=$(echo "This Start-Remote-Selenium-Process-Webhook-Docker-Container task was started by leon-ai on $TIMESTAMP1.")
  sleep 2s &&
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && nohup ./start-specific-docker-example-workflows-for-workshop.sh Remote-Selenium-Process-Triggered-By-A-Webhook-Docker-Example >> $PACKAGES_PATH/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt & exit 0" >> "$PACKAGES_PATH"/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt &> /dev/null
  sleep 2s &&
  TIMESTAMP2=$(date)
  echo "$TIME_LOGGER" >> "$PACKAGES_PATH"/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  echo "This Start-Remote-Selenium-Process-Webhook-Docker-Container task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Start-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
fi

if [ "$1" == "Trigger-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Trigger-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Trigger-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  TIMESTAMP1=$(date)
  TIME_LOGGER=$(echo "This Trigger-Remote-API-Check-Process-Webhook-Docker-Container task was started by leon-ai on $TIMESTAMP1.")
  sleep 2s &&
  nohup curl -i http://0.0.0.0:9080/hooks/robot-framework-remote-test-process-webhook-part1 &> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  sleep 2s &&
  TIMESTAMP2=$(date)
  echo "$TIME_LOGGER" >> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
  echo "This Trigger-Remote-API-Check-Process-Webhook-Docker-Container task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-API-Check-Process-Webhook-Docker-Container-Log.txt
fi

if [ "$1" == "Trigger-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Trigger-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Trigger-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  TIMESTAMP1=$(date)
  TIME_LOGGER=$(echo "This Trigger-Remote-Selenium-Process-Webhook-Docker-Container task was started by leon-ai on $TIMESTAMP1.")
  sleep 2s &&
  nohup curl -i http://0.0.0.0:9088/hooks/robot-framework-remote-test-process-webhook-part2 &> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  sleep 2s &&
  TIMESTAMP2=$(date)
  echo "$TIME_LOGGER" >> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
  echo "This Trigger-Remote-Selenium-Process-Webhook-Docker-Container task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Trigger-Remote-Selenium-Process-Webhook-Docker-Container-Log.txt
fi

if [ "$1" == "Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
  TIMESTAMP1=$(date)
  TIME_LOGGER=$(echo "This Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run task was started by leon-ai on $TIMESTAMP1.")
  sleep 2s &&
  nohup curl -i http://0.0.0.0:9080/hooks/robot-framework-remote-test-process-webhook-part1 &> "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
  nohup curl -i http://0.0.0.0:9088/hooks/robot-framework-remote-test-process-webhook-part2 &> "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
  sleep 2s &&
  TIMESTAMP2=$(date)
  echo "$TIME_LOGGER" >> "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
  echo "This Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run-Log.txt
fi

if [ "$1" == "Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/start-bug-risk-prediction-docker-container.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/Bug-Risk-Prediction-Docker-Container/Target-GitHub-Repo
  rm -rf "$PACKAGES_PATH"/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
  TIMESTAMP1=$(date)
  echo "This Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning && ./start-bug-risk-prediction-docker-container.sh" >> "$PACKAGES_PATH"/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
  TIMESTAMP2=$(date)
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/Bug-Risk-Prediction-Docker-Container/Target-GitHub-Repo
  echo "This Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo-Log.txt
fi

if [ "$1" == "Custom-Tasks-And-Suites-Runner" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Tasks-And-Suite-Runner task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  while IFS=, read -r CUSTOMRUNNER
  do
    TIMESTAMPER_CUSTOM_RPA_TASK_RUNNER=$(date)
    robot --variable SLACK_CONFIG_PATH:"$SLACK_CONFIG_PATH" --variable TASK_RUNNER_PATH:"$PROJECT_PATH/packages/robotframework-test-assistant" --include "${CUSTOMRUNNER}" --report NONE --output customized-suite-order-automation-run-ouput-"${CUSTOMRUNNER}".xml --log customized-suite-order-automation-run-"${CUSTOMRUNNER}".html --timestampoutputs -N "${CUSTOMRUNNER} ${TIMESTAMPER_CUSTOM_RPA_TASK_RUNNER}" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-RPA-Task-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt &&
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  rebot --suitestatlevel 1 -N "Manually constructed order of tasks and Robot Framework suites set up through leon-ai with a CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv file" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-results-log.html --output "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-run-*.xml >> "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-run-*.xml
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-run-*.html
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/Bug-Risk-Prediction-Docker-Container/Target-GitHub-Repo
  TIMESTAMP2=$(date)
  echo "This Custom-Tasks-And-Suite-Runner task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
fi

if [ "$1" == "Display-Custom-Tasks-And-Suites-Runner" ]; then
  open "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-results-log.html
fi

if [ "$1" == "Set-Up-Custom-Tasks-And-Suites-Runner" ]; then
  rm -rf "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  touch "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  echo "Start" > "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Slack-Notification-Send-All" ]; then
  echo "Slack_Notification_Send_All" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Build-Docker-Containers" ]; then
  echo "Build_Docker_Containers" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Clean-Up-Docker-Containers" ]; then
  echo "Clean_Up_Docker_Containers" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Start-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  echo "Start_Remote_API_Check_Process_Webhook_Docker_Container" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Start-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  echo "Start_Remote_Selenium_Process_Webhook_Docker_Container" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Trigger-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  echo "Trigger_Remote_API_Check_Process_Webhook_Docker_Container" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Trigger-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  echo "Trigger_Remote_Selenium_Process_Webhook_Container" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run" ]; then
  echo "Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo" ]; then
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/Bug-Risk-Prediction-Docker-Container/Target-GitHub-Repo
  echo "Generate_Bug_Risk_Prediction_Scores_For_A_GitHub_Repo" >> "$PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku" ]; then
  ADDITIONAL_RESULTS_PATH=Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three
  export ADDITIONAL_RESULTS_PATH
  TIMESTAMP=$(date)
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/Bug-Risk-Prediction-Using-Heuristics-And-Machine-Learning/Bug-Risk-Prediction-Docker-Container/Target-GitHub-Repo
  rm -rf "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/combined-leon-robot-framework-assistant-results-log.html
  rm -rf ./combined-leon-robot-framework-assistant-results-log.html
  pwd > "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt
  ls -l >> "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt
  rebot --removekeywords name:Capture\ Page\ Screenshot --removekeywords name:Take\ Screenshot --suitestatlevel 1 -N "Leon Robot Framework Assistant Combined Results Dashboard" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/combined-leon-robot-framework-assistant-results-log.html --exclude Start --output "$PACKAGES_PATH"/Log-Files/Results/*.xml "$PACKAGES_PATH"/"$ADDITIONAL_RESULTS_PATH"/*.xml >> "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt
  cp "$PACKAGES_PATH"/Log-Files/Results/combined-leon-robot-framework-assistant-results-log.html ./combined-leon-robot-framework-assistant-results-log.html
  echo "Gathered, combined results files, and deployed them to Heroku on $TIMESTAMP" > ./git_commit_message.txt
  GIT_COMMIT_MESSAGE=$(cat ./git_commit_message.txt) &&
  git add . >> "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt &&
  git commit -m "$GIT_COMMIT_MESSAGE" --no-verify >> "$PACKAGES_PATH"/Log-Files/Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku-Log.txt &&
  git push origin develop > /dev/null 2>&1
  echo 'Your Robot Framework test results have been combined into one result file and deployed to Heroku. You can view it in your browser using https://robocon2020-workshop-dashboard.herokuapp.com/' | slacktee.sh -i :nerd_face: --plain-text --plain-text --config "$SLACK_CONFIG_PATH" > /dev/null 2>&1
fi