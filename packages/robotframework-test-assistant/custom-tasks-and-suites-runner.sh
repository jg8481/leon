#!/bin/bash


CUSTOM_PROJECT_PATH=$(pwd)
export CUSTOM_PROJECT_PATH
CUSTOM_PACKAGES_PATH="$CUSTOM_PROJECT_PATH/packages/robotframework-test-assistant/brain"
export CUSTOM_PACKAGES_PATH

if [ "$1" == "Custom-Tasks-And-Suites-Runner" ]; then
  rm -rf "$CUSTOM_PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.xml
  rm -rf "$CUSTOM_PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.html
  rm -rf "$CUSTOM_PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.png
  rm -rf "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  touch "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Tasks-And-Suites-Runner task was started by leon-ai on $TIMESTAMP1." >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  echo "------------------------------------------------------------------" >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  while IFS=, read -r CUSTOMRUNNER
  do
    TIMESTAMP2=$(date)
    echo "$CUSTOMRUNNER started running on $TIMESTAMP2." >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
    #bash -c "cd $CUSTOM_PROJECT_PATH/packages/robotframework-test-assistant/ && echo $CUSTOMRUNNER && ls -l" >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
    #bash -c "$CUSTOM_PROJECT_PATH/packages/robotframework-test-assistant/robotframework-runner.sh Clean-Up-Results && exit 0" >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.out
    #bash -c "$CUSTOM_PROJECT_PATH/packages/robotframework-test-assistant/robotframework-runner.sh $CUSTOMRUNNER > /dev/null 2>&1 && exit 0"
    bash -c "$CUSTOM_PROJECT_PATH/packages/robotframework-test-assistant/robotframework-runner.sh $CUSTOMRUNNER > /dev/null 2>&1  && continue" >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.out
    TIMESTAMP3=$(date)
    echo "$CUSTOMRUNNER stopped running on $TIMESTAMP3." >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
    sleep 0.5s
  done < "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  #rebot --suitestatlevel 1 -N "Manually constructed order of tasks and Robot Framework suites set up through leon-ai with a CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv file" --report NONE --log "$CUSTOM_PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-results-log.html --output "$CUSTOM_PACKAGES_PATH"/Log-Files/Results/*.xml "$CUSTOM_PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.xml >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  #rm -rf "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  TIMESTAMP4=$(date)
  echo "------------------------------------------------------------------" >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  echo "This Custom-Tasks-And-Suites-Runner task was started by leon-ai, and it ended on $TIMESTAMP4." >> "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt
  cat "$CUSTOM_PACKAGES_PATH"/Log-Files/Custom-Tasks-And-Suite-Runner-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config "$CUSTOM_PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Set-Up-Custom-Tasks-And-Suites-Runner" ]; then
  rm -rf "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  touch "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
  #echo "Custom tasks and suites" > "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Check-One-Suite" ]; then
  echo "Check_One" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Check-Two-Suite" ]; then
  echo "Check_Two" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Check-Three-Suite" ]; then
  echo "Check_Three" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Check-Four-Suite" ]; then
  echo "Check_Four" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Group-One-Suite" ]; then
  echo "Group_One" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Group-Two-Suite" ]; then
  echo "Group_Two" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Group-Three-Suite" ]; then
  echo "Group_Three" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Group-Four-Suite" ]; then
  echo "Group_Four" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Slack-Notification-Send-All" ]; then
  echo "Slack-Notification-Send-All" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Build-Docker-Containers" ]; then
  echo "Build-Docker-Containers" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Clean-Up-Docker-Containers" ]; then
  echo "Clean-Up-Docker-Containers" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi

if [ "$1" == "Set-Robot-Framework-Docker-API-Checks" ]; then
  echo "Robot-Framework-Docker-API-Checks" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Robot-Framework-Docker-Random-Order-API-Checks" ]; then
  echo "Robot-Framework-Docker-Random-Order-API-Checks" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Robot-Framework-Docker-MBT-Graphwalker-Checks" ]; then
  echo "Robot-Framework-Docker-MBT-Graphwalker-Checks" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again" ]; then
  echo "Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Robot-Framework-Selenium-Desktop-Web-Checks" ]; then
  echo "Robot-Framework-Selenium-Desktop-Web-Checks" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Start-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  echo "Start-Remote-API-Check-Process-Webhook-Docker-Container" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Start-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  echo "Start-Remote-Selenium-Process-Webhook-Docker-Container" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Trigger-Remote-API-Check-Process-Webhook-Docker-Container" ]; then
  echo "Trigger-Remote-API-Check-Process-Webhook-Docker-Container" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi


if [ "$1" == "Set-Trigger-Remote-Selenium-Process-Webhook-Docker-Container" ]; then
  echo "Trigger-Remote-Selenium-Process-Webhook-Docker-Container" >> "$CUSTOM_PACKAGES_PATH"/Robot-Files/CustomizedTasksAndRobotFrameworkSuitesOrderSequence.csv
fi