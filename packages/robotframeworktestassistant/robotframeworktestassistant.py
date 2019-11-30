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
    subprocess.call(filepath + '/robotframeworkrunner.sh Clean-Up-Results', shell=True)
    return utils.output('end', 'clean_up_results_ran', utils.translate('clean_up_results_ran'))

def Check_One(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Check-One', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Two(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Check-Two', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Three(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Check-Three', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Check_Four(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Check-Four', shell=True)
    return utils.output('end', 'single_check_ran', utils.translate('single_check_ran'))

def Set_Up_Runner_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Up-Runner-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Check-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Check-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Three(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Check-Three', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Check_Four(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Check-Four', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Custom_Runner_One(string, entities):
    """Leon will start a custom Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Custom-Runner-One', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Display_Runner_One(string, entities):
    """Leon will display the results of the Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Display-Runner-One', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Group_One(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Group-One', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Two(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Group-Two', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Three(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Group-Three', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Group_Four(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Group-Four', shell=True)
    return utils.output('end', 'parallel_checks_ran', utils.translate('parallel_checks_ran'))

def Set_Up_Runner_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Up-Runner-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_One(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Group-One', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Two(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Group-Two', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Three(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Group-Three', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Set_Group_Four(string, entities):
    """Leon will set up a custom automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Set-Group-Four', shell=True)
    return utils.output('end', 'finished_setting_up', utils.translate('finished_setting_up'))

def Custom_Runner_Two(string, entities):
    """Leon will start a custom Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Custom-Runner-Two', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))

def Display_Runner_Two(string, entities):
    """Leon will display the results of the Robot Framework automated check run"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Display-Runner-Two', shell=True)
    return utils.output('end', 'display_results', utils.translate('display_results'))

def Slack_Notification_Send_All(string, entities):
    """Leon will send the console log results of the Robot Framework automated check runs to Slack"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Slack-Notification-Send-All', shell=True)
    return utils.output('end', 'notify_the_team', utils.translate('notify_the_team'))

def Robot_Framework_Desktop_Web(string, entities):
    """Leon will run Robot Framework through the script runner"""
    subprocess.call(filepath + '/robotframeworkrunner.sh Robot-Framework-Desktop-Web-Test-Example', shell=True)
    return utils.output('end', 'multiple_checks_ran', utils.translate('multiple_checks_ran'))