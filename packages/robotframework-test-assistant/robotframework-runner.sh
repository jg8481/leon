#!/bin/bash

PROJECT_PATH=$(pwd)
export PROJECT_PATH
PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant/brain"
export PACKAGES_PATH


if [ "$1" == "Clean-Up-Results" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/*.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/*
fi

if [ "$1" == "Check-One" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-One task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  robot --include Check_One --report NONE --log check-one-log.html --output check-one-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-One-Log.txt
fi

if [ "$1" == "Check-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  robot --include Check_Two --report NONE --log check-two-log.html --output check-two-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-Two-Log.txt
fi

if [ "$1" == "Check-Three" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Three task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  robot --include Check_Three --report NONE --log check-three-log.html --output check-three-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
  TIMESTAMP2=$(date)
  echo "This Check-Three task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Check-Three-Log.txt
fi

if [ "$1" == "Check-Four" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  TIMESTAMP1=$(date)
  echo "This Check-Four task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
  robot --include Check_Four --report NONE --log check-four-log.html --output check-four-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Check-Four-Log.txt
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
    robot --include "${SERIALRUNNER}" --report NONE --output custom-serial-automation-run-ouput.xml --log custom-serial-automation-run.html --timestampoutputs -N "${SERIALRUNNER}" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt &&
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run in a manually constructed sequence set up through leon-ai with a CustomSerialAutomationRunnerFile.csv file" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-results-log.html --output "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-*.xml >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-*.xml
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-run-*.html
  #rm -rf "$PACKAGES_PATH"/Robot-Files/CustomSerialAutomationRunnerFile.csv
  TIMESTAMP2=$(date)
  echo "This Custom-Runner-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt
  cat "$PACKAGES_PATH"/Log-Files/Custom-Runner-One-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-One" ]; then
  open "$PACKAGES_PATH"/Log-Files/Results/custom-serial-automation-results-log.html
fi

if [ "$1" == "Group-One" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-One task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  pabot --verbose --include Group_One --report NONE --log group-one-log.html --output group-one-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-One task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-One-Log.txt
fi

if [ "$1" == "Group-Two" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  pabot --verbose --include Group_Two --report NONE --log group-two-log.html --output group-two-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-Two-Log.txt
fi

if [ "$1" == "Group-Three" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Three task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  pabot --verbose --include Group_Three --report NONE --log group-three-log.html --output group-three-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
  TIMESTAMP2=$(date)
  echo "This Group-Three task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Group-Three-Log.txt
fi

if [ "$1" == "Group-Four" ]; then
  rm -rf "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  TIMESTAMP1=$(date)
  echo "This Group-Four task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
  pabot --verbose --include Group_Four --report NONE --log group-four-log.html --output group-four-output.xml -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Group-Four-Log.txt
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
  touch "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Runner-Two task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  while IFS=, read -r PARALLELRUNNER
  do
    robot --include "${PARALLELRUNNER}" --report NONE --output custom-parallel-automation-run-ouput.xml --log custom-parallel-automation-run.html --timestampoutputs -N "${PARALLELRUNNER}" -d "$PACKAGES_PATH"/Log-Files/Results "$PACKAGES_PATH"/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt &&
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run with a manually constructed sequence set up through leon-ai with a CustomParallelAutomationRunnerFile.csv file" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-results-log.html --output "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-*.xml >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-*.xml
  rm -rf "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-run-*.html
  #rm -rf "$PACKAGES_PATH"/Robot-Files/CustomParallelAutomationRunnerFile.csv
  TIMESTAMP2=$(date)
  echo "This Custom-Runner-Two task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt
  cat "$PACKAGES_PATH"/Log-Files/Custom-Runner-Two-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-Two" ]; then
  open "$PACKAGES_PATH"/Log-Files/Results/custom-parallel-automation-results-log.html
fi

if [ "$1" == "Slack-Notification-Send-All" ]; then
  cat "$PACKAGES_PATH"/Log-Files/*.txt | slacktee.sh -i :nerd_face: --plain-text --config "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Build-Docker-Containers" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  TIMESTAMP1=$(date)
  echo "This Build-Docker-Containers task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Build-Images-Teardown-Old-Docker-Containers > /dev/null 2>&1 && docker images && exit 0" >> "$PACKAGES_PATH"/Log-Files/Build-Images-Teardown-Old-Docker-Containers-Log.txt
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

if [ "$1" == "Display-Current-MBT-Graphwalker-Path" ]; then
  open "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-run.html
fi

if [ "$1" == "Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again" ]; then
  chmod +x "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-docker-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf "$PACKAGES_PATH"/Log-Files/Previous-Long-Graphwalker-Run-Workshop-Example-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Previous-Long-Graphwalker-Run-Workshop-Example-Log.txt
  TIMESTAMP1=$(date)
  echo "This Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Previous-Long-Graphwalker-Run-Workshop-Example-Log.txt
  bash -c "cd $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-docker-example-workflows-for-workshop.sh Previous-Long-Graphwalker-Run-Workshop-Example > /dev/null 2>&1 && exit 0"
  TIMESTAMP2=$(date)
  echo "This Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task was started by leon-ai, and it ended on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Previous-Long-Graphwalker-Run-Workshop-Example-Log.txt
  echo "The results of the Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again task can be found in this html log file-> $PACKAGES_PATH/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-reuse-previous-path-file" >> "$PACKAGES_PATH"/Log-Files/Previous-Long-Graphwalker-Run-Workshop-Example-Log.txt
fi

if [ "$1" == "Display-MBT-Graphwalker-Path-Rerun" ]; then
  open "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/Graphwalker-Model-Based-Test-Results/long-graphwalker-run.html
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