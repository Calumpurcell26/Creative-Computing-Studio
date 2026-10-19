#!/bin/bash

SYSTEM_USER=$USER
HOME_DIR=$HOME

# This is a test of variables

COURSE_NAME="Creative Computing Studio"

echo "Username is $SYSTEM_USER"
echo "Home directory is $HOME_DIR"
echo "They are on course $COURSE_NAME"

read -p "what text editor do you currently use? " EDITOR

echo "The user $SYSTEM_USER is using text editor $EDITOR"


read -p  "what is your national insurance number: " NI_NUM

echo "NI Number is $NI_NUM, Identity is now stolen"
