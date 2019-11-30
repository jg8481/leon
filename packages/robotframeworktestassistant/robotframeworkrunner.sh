#!/bin/bash

if [ "$1" == "Clean-Up-Results" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/*.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/*
fi

if [ "$1" == "Check-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Check-One-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Check-One-Log.txt
  robot --include Check_One --report NONE --log check-one-log.html --output check-one-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Check-One-Log.txt
fi

if [ "$1" == "Check-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Two-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Two-Log.txt
  robot --include Check_Two --report NONE --log check-two-log.html --output check-two-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Two-Log.txt
fi

if [ "$1" == "Check-Three" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Three-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Three-Log.txt
  robot --include Check_Three --report NONE --log check-three-log.html --output check-three-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Three-Log.txt
fi

if [ "$1" == "Check-Four" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Four-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Four-Log.txt
  robot --include Check_Four --report NONE --log check-four-log.html --output check-four-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Check-Four-Log.txt
fi

if [ "$1" == "Set-Up-Runner-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
  touch $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
  echo "Start" > $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-One" ]; then
  path=$(pwd)
  echo "Check_One" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Two" ]; then
  path=$(pwd)
  echo "Check_Two" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Three" ]; then
  path=$(pwd)
  echo "Check_Three" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Check-Four" ]; then
  path=$(pwd)
  echo "Check_Four" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  while IFS=, read -r SERIALRUNNER
  do
    robot --include "${SERIALRUNNER}" --report NONE --output custom-serial-automation-run-ouput.xml --log custom-serial-automation-run.html --timestampoutputs -N "${SERIALRUNNER}" -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt &&
    sleep 0.5s
  done < $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run in a manually constructed sequence set up through leon-ai with a CustomSerialAutomationRunnerFile.csv file" --report NONE --log $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-automation-results-log.html --output $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-automation-run-*.xml >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-automation-run-*.xml
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-automation-run-*.html
  #rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialAutomationRunnerFile.csv
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-One" ]; then
  path=$(pwd)
  open $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-automation-results-log.html
fi

if [ "$1" == "Group-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Group-One-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Group-One-Log.txt
  pabot --verbose --include Group_One --report NONE --log group-one-log.html --output group-one-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Group-One-Log.txt
fi

if [ "$1" == "Group-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Two-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Two-Log.txt
  pabot --verbose --include Group_Two --report NONE --log group-two-log.html --output group-two-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Two-Log.txt
fi

if [ "$1" == "Group-Three" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Three-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Three-Log.txt
  pabot --verbose --include Group_Three --report NONE --log group-three-log.html --output group-three-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Three-Log.txt
fi

if [ "$1" == "Group-Four" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Four-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Four-Log.txt
  pabot --verbose --include Group_Four --report NONE --log group-four-log.html --output group-four-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Group-Four-Log.txt
fi

if [ "$1" == "Set-Up-Runner-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
  touch $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
  echo "Start" > $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-One" ]; then
  path=$(pwd)
  echo "Group_One" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Two" ]; then
  path=$(pwd)
  echo "Group_Two" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Three" ]; then
  path=$(pwd)
  echo "Group_Three" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Set-Group-Four" ]; then
  path=$(pwd)
  echo "Group_Four" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  while IFS=, read -r PARALLELRUNNER
  do
    robot --include "${PARALLELRUNNER}" --report NONE --output custom-parallel-automation-run-ouput.xml --log custom-parallel-automation-run.html --timestampoutputs -N "${PARALLELRUNNER}" -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt &&
    sleep 0.5s
  done < $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework automation run with a manually constructed sequence set up through leon-ai with a CustomParallelAutomationRunnerFile.csv file" --report NONE --log $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-automation-results-log.html --output $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-automation-run-*.xml >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-automation-run-*.xml
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-automation-run-*.html
  #rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelAutomationRunnerFile.csv
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-Two" ]; then
  path=$(pwd)
  open $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-automation-results-log.html
fi

if [ "$1" == "Slack-Notification-Send-All" ]; then
  path=$(pwd)
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/*.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Robot-Framework-Desktop-Web" ]; then
  path=$(pwd)
  chmod -R 755 $path/bridges/python/.venv/WebDriverManager > /dev/null 2>&1
  chmod +x $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-local-machine-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Log.txt
  bash -c "cd $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-local-machine-example-workflows-for-workshop.sh Robot-Framework-Desktop-Web-Test-Example" > $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Log.txt
fi
