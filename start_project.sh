#!/bin/bash
#
#           !!! Run with 'sudo' privilage under your user
#
#---------------------------
#   Install docker at least
#---------------------------
#   sudo yum install git vim telnet
#   sudo yum install -y yum-utils
#   sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
#   sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#   sudo systemctl start docker
#   docker -v
#   docker compose version


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