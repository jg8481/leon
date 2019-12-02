#!/bin/bash

export PROJECT_PATH=$(pwd)
export PACKAGES_PATH="$PROJECT_PATH/packages/robotframework-test-assistant/brain"

if [ "$1" == "Custom-Suite-Runner" ]; then
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.xml
  rm -rf "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.html
  rm -rf "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  touch "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  TIMESTAMP1=$(date)
  echo "This Custom-Suite-Runner task was started by leon-ai on $TIMESTAMP1." >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  echo "------------------------------------------------------------------" >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  while IFS=, read -r SUITERUNNER
  do
    TIMESTAMP2=$(date)
    echo "$SUITERUNNER started running on $TIMESTAMP2." >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
    bash -c "cd $PROJECT_PATH/packages/robotframework-test-assistant/ && robotframework-runner.sh $SUITERUNNER > /dev/null 2>&1 && exit 0"
    TIMESTAMP3=$(date)
    echo "$SUITERUNNER stopped running on $TIMESTAMP3." >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
    sleep 0.5s
  done < "$PACKAGES_PATH"/Robot-Files/CustomizedRobotFrameworkSuitesOrderSequence.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run with a manually constructed order of suites set up through leon-ai with a CustomizedRobotFrameworkSuitesOrderSequence.csv file" --report NONE --log "$PACKAGES_PATH"/Log-Files/Results/customized-suite-order-automation-results-log.html --output "$PACKAGES_PATH"/Log-Files/Results/*.xml "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Workshop-Part-Three/*.xml >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  #rm -rf "$PACKAGES_PATH"/Robot-Files/CustomizedRobotFrameworkSuitesOrderSequence.csv
  TIMESTAMP4=$(date)
  echo "------------------------------------------------------------------" >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  echo "This Custom-Suite-Runner task was started by leon-ai, and it ended on $TIMESTAMP4." >> "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt
  cat "$PACKAGES_PATH"/Log-Files/Custom-Suite-Runner-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config "$PACKAGES_PATH"/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi