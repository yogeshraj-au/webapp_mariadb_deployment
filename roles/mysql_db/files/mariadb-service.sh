#!/bin/bash

service=mariadb

STATUS="$(systemctl is-active mariadb.service)"
if [ "${STATUS}" = "active" ]; then
    echo "Execute your tasks ....."
else 
    echo "####################################################"
    echo " Service not running.... so start the service "  
    service $service start
    ################# echo "check the service status" ###
    
    output=$(service $service status | awk '{print $3}')
    echo $output
fi
