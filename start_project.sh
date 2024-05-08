#!/bin/bash
#
#           !!! Run with 'sudo' privilage under your user
#
GIT_PROJECT=https://github.com/ValentinStupa/shvirtd-example-python.git
DEST_DIR=/opt
PROJECT_NAME=`basename $GIT_PROJECT | sed -e 's=.git==g'`
DIR_PROJECT=$DEST_DIR/$PROJECT_NAME

function check_dir () {
    
    if [ ! -d $DEST_DIR ];
    then
        mkdir $DEST_DIR
    fi
}
check_dir

cd $DEST_DIR
git clone $GIT_PROJECT
cd $DIR_PROJECT
sudo docker compose up -d && sudo docker ps -a