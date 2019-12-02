#!/usr/bin/env python3
# -*- coding:utf-8 -*-

import utils
import os
import os.path
import sys
import subprocess
import re

filepath = os.path.dirname(os.path.realpath(__file__))

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
    subprocess.call(filepath + '/robotframework-runner.sh Display-Current-MBT-Graphwalker-Path', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Run_Same_Robot_Framework_Docker_MBT_Graphwalker_Checks_Again(string, entities):
    """Leon will run Robot Framework scripts from within Docker Containers that run locally"""
    subprocess.call(filepath + '/robotframework-runner.sh Run-Same-Robot-Framework-Docker-MBT-Graphwalker-Checks-Again', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Robot_Framework_Selenium_Desktop_Web_Checks(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframework-runner.sh Robot-Framework-Selenium-Desktop-Web-Checks', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))