#!/bin/bash

SERVER=192.168.33.12

dt=`date "+%Y-%m-%d-%H-%M-%S"`
appid="example-$dt"

payload=$(printf '{
    "id": "%s", 
    "cmd": "while [ true ] ; do date; echo Hello Marathon ; sleep 5 ; done",
    "cpus": 0.1,
    "mem": 32.0,
    "instances": 1
}' $appid)

wget -SO - --post-data="$payload" --header="Content-Type: application/json" http://$SERVER:8080/v2/apps | python -m json.tool
sleep 10
wget -SO - http://$SERVER:8080/v2/apps/$appid | python -m json.tool
