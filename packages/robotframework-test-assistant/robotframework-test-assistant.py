#!/usr/bin/env python3
# -*- coding:utf-8 -*-

import utils
import os
import os.path
import sys
import subprocess
import re
import time


filepath = os.path.dirname(os.path.realpath(__file__))
small_time_delay = 5 ##--> Use this to set up your small time delay. This time delay is in seconds.
medium_time_delay = 20 ##--> Use this to set up your medium time delay. This time delay is in seconds.
large_time_delay = 600 ##--> Use this to set up your large time delay. This time delay is in seconds.

def Clean_Up_Results(string, entities):
    """Leon will clean up the results folder"""
    subprocess.call(filepath + '/robotframework-runner.sh Clean-Up-Results', shell=True)
    return utils.output('end', 'clean_up_results_ran', utils.translate('clean_up_results_ran'))

def Check_One(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Check-One', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Two(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Check-Two', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Three(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Check-Three', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Four(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Check-Four', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Set_Up_Runner_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Runner-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Three(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Three', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Four(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Four', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Custom_Runner_One(string, entities):
    """Leon will start a custom Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-One', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Display_Runner_One(string, entities):
    """Leon will display the results of the Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Display-Runner-One', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Group_One(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Group-One', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Two(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Group-Two', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Three(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Group-Three', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Four(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Group-Four', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Set_Up_Runner_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Runner-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Three(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Three', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Four(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Four', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Custom_Runner_Two(string, entities):
    """Leon will start a custom Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-Two', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Display_Runner_Two(string, entities):
    """Leon will display the results of the Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframework-runner.sh Display-Runner-Two', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Slack_Notification_Send_All(string, entities):
    """Leon will send the console log results of the Robot Framework automated check runs to Slack"""
    subprocess.call(filepath + '/robotframework-runner.sh Slack-Notification-Send-All', shell=True)
    return utils.output('end', 'notify_the_team', utils.translate('notify_the_team'))

def Build_Docker_Containers(string, entities):
    """Leon will build Docker Containers for running Robot Framework scripts"""
    subprocess.call(filepath + '/robotframework-runner.sh Build-Docker-Containers', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Clean_Up_Docker_Containers(string, entities):
    """Leon will stop and remove Docker Containers"""
    subprocess.call(filepath + '/robotframework-runner.sh Clean-Up-Docker-Containers', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Robot_Framework_Docker_API_Checks(string, entities):
    """Leon will run Robot Framework scripts from within Docker Containers that run locally"""
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Docker-API-Checks', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Robot_Framework_Docker_Random_Order_API_Checks(string, entities):
    """Leon will run Robot Framework scripts from within Docker Containers that run locally"""
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Docker-Random-Order-API-Checks', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Robot_Framework_Docker_MBT_Graphwalker_Checks(string, entities):
    """Leon will run Robot Framework scripts from within Docker Containers that run locally"""
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Docker-MBT-Graphwalker-Checks', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Display_Current_MBT_Graphwalker_Path(string, entities):
    """Leon will display the results of the current Graphwalker Path generated by the Robot Framework Docker Container"""
    subprocess.call(filepath + '/robotframework-runner.sh Display-MBT-Graphwalker-Results', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Run_Same_Robot_Framework_Docker_MBT_Graphwalker_Checks_Again(string, entities):
    """Leon will run Robot Framework scripts from within Docker Containers that run locally"""
    subprocess.call(filepath + '/robotframework-runner.sh Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Robot_Framework_Selenium_Desktop_Web_Checks(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Selenium-Desktop-Web-Checks', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Start_Remote_API_Check_Process_Webhook_Docker_Container(string, entities):
    """Leon will start a Docker Container for running remote Robot Framework scripts triggered by a webhook"""
    subprocess.call(filepath + '/robotframework-runner.sh Start-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Start_Remote_Selenium_Process_Webhook_Container(string, entities):
    """Leon will start a Docker Container for running remote Robot Framework scripts triggered by a webhook"""
    subprocess.call(filepath + '/robotframework-runner.sh Start-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Trigger_Remote_API_Check_Process_Webhook_Docker_Container(string, entities):
    """Leon will trigger a Docker Container for running remote Robot Framework scripts using a webhook"""
    subprocess.call(filepath + '/robotframework-runner.sh Trigger-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Trigger_Remote_Selenium_Process_Webhook_Container(string, entities):
    """Leon will trigger a Docker Container for running remote Robot Framework scripts using a webhook"""
    subprocess.call(filepath + '/robotframework-runner.sh Trigger-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run(string, entities):
    """Leon will trigger a Docker Container for running remote Robot Framework scripts using a webhook"""
    subprocess.call(filepath + '/robotframework-runner.sh Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Custom_Tasks_And_Suites_Runner(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Tasks-And-Suites-Runner', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('multiple_checks_ran'))

def Set_Up_Custom_Tasks_And_Suites_Runner(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Custom-Tasks-And-Suites-Runner', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Slack_Notification_Send_All(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Slack-Notification-Send-All', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Build_Docker_Containers(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Build-Docker-Containers', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Clean_Up_Docker_Containers(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Clean-Up-Docker-Containers', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Start_Remote_API_Check_Process_Webhook_Docker_Container(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Start-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Start_Remote_Selenium_Process_Webhook_Docker_Container(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Start-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Trigger_Remote_API_Check_Process_Webhook_Docker_Container(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Trigger_Remote_Selenium_Process_Webhook_Docker_Container(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Trigger_Both_Webhook_Docker_Containers_For_Parallel_Run(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Generate_Bug_Risk_Prediction_Scores_For_A_GitHub_Repo(string, entities):
    """Leon will set up a custom automated tasks and suites run"""
    subprocess.call(filepath + '/robotframework-runner.sh Set-Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Generic_Customizable_Time_Delayed_Runner_One(string, entities):
    """Leon will set up a time delayed generic task runner"""
    ##--> Suggestion: Feel free to change the time.sleep to small_time_delay, medium_time_delay or large_time_delay.
    time.sleep(small_time_delay)
    ##--> Suggestion: Feel free to set the following subprocess.call to any of the previously defined commands in this robotframework-test-assistant.py script. The following is just an example triggering a single time delayed check.
    subprocess.call(filepath + '/robotframework-runner.sh Check-One', shell=True)
    return utils.output('end', 'generic_time_delayed_task', utils.translate('generic_time_delayed_task'))

def Generic_Customizable_Time_Delayed_Runner_Two(string, entities):
    """Leon will set up a time delayed generic task runner"""
    ##--> Suggestion: Feel free to change the time.sleep to small_time_delay, medium_time_delay or large_time_delay.
    time.sleep(small_time_delay)
    ##--> Suggestion: Feel free to set the following subprocess.call to any of the previously defined commands in this robotframework-test-assistant.py script. The following example builds off of a previously created Custom_Runner_Two .csv file.
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-Two', shell=True)
    return utils.output('end', 'generic_time_delayed_task', utils.translate('generic_time_delayed_task'))

def Generic_Customizable_Time_Delayed_Runner_Three(string, entities):
    """Leon will set up a time delayed generic task runner"""
    ##--> Suggestion: Feel free to change the time.sleep to small_time_delay, medium_time_delay or large_time_delay.
    time.sleep(small_time_delay)
    ##--> Suggestion: Feel free to set the following subprocess.call to any of the previously defined commands in this robotframework-test-assistant.py script. The following example will chain together the commands for a new Custom_Runner_One .csv file, runs it, and displays results.
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Runner-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Three', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Two', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Three', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Display-Runner-One', shell=True)
    return utils.output('end', 'generic_time_delayed_task', utils.translate('generic_time_delayed_task'))

def Generic_Customizable_Time_Delayed_Runner_Four(string, entities):
    """Leon will set up a time delayed generic task runner"""
    ##--> Suggestion: Feel free to change the time.sleep to small_time_delay, medium_time_delay or large_time_delay.
    time.sleep(small_time_delay)
    ##--> Suggestion: Feel free to set the following subprocess.call to any of the previously defined commands in this robotframework-test-assistant.py script. The following example will chain together the commands for all of the custom runners and sends notifications to the team.
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Runner-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Three', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Two', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-Four', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Check-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Selenium-Desktop-Web-Checks', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Runner-Two', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Two', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-One', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Four', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Group-Three', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Runner-Two', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Docker-MBT-Graphwalker-Checks', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Up-Custom-Tasks-And-Suites-Runner', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Clean-Up-Docker-Containers', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Build-Docker-Containers', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Start-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Start-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Both-Webhook-Docker-Containers-For-Parallel-Run', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Remote-Selenium-Process-Webhook-Docker-Container', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Trigger-Remote-API-Check-Process-Webhook-Docker-Container', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Set-Generate-Bug-Risk-Prediction-Scores-For-A-GitHub-Repo', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Custom-Tasks-And-Suites-Runner', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku', shell=True)
    subprocess.call(filepath + '/robotframework-runner.sh Slack-Notification-Send-All', shell=True)
    return utils.output('end', 'generic_time_delayed_task', utils.translate('generic_time_delayed_task'))

def Gather_All_Robot_Framework_Test_Results_And_Deploy_Dashboard_To_Heroku(string, entities):
    """Leon will run Robot Framework ReBot and Git commands to deploy a results file to Heroku"""
    subprocess.call(filepath + '/robotframework-runner.sh Gather-All-Robot-Framework-Test-Results-And-Deploy-Dashboard-To-Heroku', shell=True)
    return utils.output('end', 'generic_time_delayed_task', utils.translate('finished_setting_up'))