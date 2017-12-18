#!/bin/bash

source /opt/ros/${ROS_DISTRO}/setup.bash
export ROS_IP=${ROS_IP:-`hostname -I`}
export ROS_MASTER_URI=${ROS_MASTER_URI:-http://`hostname -I`:11311}

echo "ROS_IP: ${ROS_IP}"
echo "ROS_MASTER_URI: ${ROS_MASTER_URI}"

COMMAND="roslaunch mavros -p 11311 px4.launch $@"
echo "Running command: ${COMMAND}"

${COMMAND}
