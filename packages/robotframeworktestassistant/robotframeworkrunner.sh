#!/bin/bash

if [ "$1" == "Clean-Up-Results" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/*.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/*
fi

if [ "$1" == "Test-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Test-One-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Test-One-Log.txt
  robot --include Test_One --report NONE --log test-one-log.html --output test-one-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Test-One-Log.txt
fi

if [ "$1" == "Test-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Two-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Two-Log.txt
  robot --include Test_Two --report NONE --log test-two-log.html --output test-two-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Two-Log.txt
fi

if [ "$1" == "Test-Three" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Three-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Three-Log.txt
  robot --include Test_Three --report NONE --log test-three-log.html --output test-three-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Three-Log.txt
fi

if [ "$1" == "Test-Four" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Four-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Four-Log.txt
  robot --include Test_Four --report NONE --log test-four-log.html --output test-four-output.xml -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot > $path/packages/robotframeworktestassistant/brain/Log-Files/Test-Four-Log.txt
fi

if [ "$1" == "Set-Up-Runner-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
  touch $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
  echo "Start" > $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
fi

if [ "$1" == "Set-Test-One" ]; then
  path=$(pwd)
  echo "Test_One" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
fi

if [ "$1" == "Set-Test-Two" ]; then
  path=$(pwd)
  echo "Test_Two" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
fi

if [ "$1" == "Set-Test-Three" ]; then
  path=$(pwd)
  echo "Test_Three" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
fi

if [ "$1" == "Set-Test-Four" ]; then
  path=$(pwd)
  echo "Test_Four" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-One" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  while IFS=, read -r SERIALRUNNER
  do
    robot --include "${SERIALRUNNER}" --report NONE --output custom-serial-test-run-ouput.xml --log custom-serial-test-run.html --timestampoutputs -N "${SERIALRUNNER}" -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Serial-Runner.robot >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt &&
    sleep 0.5s
  done < $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework test run with a manually constructed test sequence set up through leon-ai with a CustomSerialTestRunnerFile.csv file" --report NONE --log $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-test-results-log.html --output $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-test-run-*.xml >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-test-run-*.xml
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-test-run-*.html
  #rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomSerialTestRunnerFile.csv
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-One-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-One" ]; then
  path=$(pwd)
  open $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-serial-test-results-log.html
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
  rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
  touch $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
  echo "Start" > $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
fi

if [ "$1" == "Set-Group-One" ]; then
  path=$(pwd)
  echo "Group_One" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
fi

if [ "$1" == "Set-Group-Two" ]; then
  path=$(pwd)
  echo "Group_Two" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
fi

if [ "$1" == "Set-Group-Three" ]; then
  path=$(pwd)
  echo "Group_Three" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
fi

if [ "$1" == "Set-Group-Four" ]; then
  path=$(pwd)
  echo "Group_Four" >> $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
fi

if [ "$1" == "Custom-Runner-Two" ]; then
  path=$(pwd)
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  while IFS=, read -r PARALLELRUNNER
  do
    robot --include "${PARALLELRUNNER}" --report NONE --output custom-parallel-test-run-ouput.xml --log custom-parallel-test-run.html --timestampoutputs -N "${PARALLELRUNNER}" -d $path/packages/robotframeworktestassistant/brain/Log-Files/Results $path/packages/robotframeworktestassistant/brain/Robot-Files/Leon-Robot-Framework-Customizable-Parallel-Runner*.robot >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt &&
    sleep 0.5s
  done < $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
  rebot --suitestatlevel 1 -N "Robot Framework test run with a manually constructed test sequence set up through leon-ai with a CustomParallelTestRunnerFile.csv file" --report NONE --log $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-test-results-log.html --output $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-test-run-*.xml >> $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-test-run-*.xml
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-test-run-*.html
  #rm -rf $path/packages/robotframeworktestassistant/brain/Robot-Files/CustomParallelTestRunnerFile.csv
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/Custom-Runner-Two-Log.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Display-Runner-Two" ]; then
  path=$(pwd)
  open $path/packages/robotframeworktestassistant/brain/Log-Files/Results/custom-parallel-test-results-log.html
fi

if [ "$1" == "Slack-Notification-Send-All" ]; then
  path=$(pwd)
  cat $path/packages/robotframeworktestassistant/brain/Log-Files/*.txt | slacktee.sh -i :nerd_face: --plain-text --config $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/Workshop-Examples/Shared-Resources/.slacktee > /dev/null 2>&1
fi

if [ "$1" == "Robot-Framework-Desktop-Web-Test-Example" ]; then
  path=$(pwd)
  chmod -R 755 $path/bridges/python/.venv/WebDriverManager > /dev/null 2>&1
  chmod +x $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/start-specific-local-machine-example-workflows-for-workshop.sh > /dev/null 2>&1
  rm -rf $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Test-Example-Log.txt
  touch $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Test-Example-Log.txt
  bash -c "cd $path/packages/robotframeworktestassistant/brain/Tool-Strategies-Lone-Testers-Test-Leadership-Congress-2019/ && ./start-specific-local-machine-example-workflows-for-workshop.sh Robot-Framework-Desktop-Web-Test-Example" > $path/packages/robotframeworktestassistant/brain/Log-Files/Robot-Framework-Desktop-Web-Test-Example-Log.txt
fi
