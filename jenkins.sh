#!/bin/bash

###################################################################
#This shell script is to fetch the CPU, RAM & Diskspace of the sever
###################################################################
#Author: P.Avinash
#Date: 08th Jan 2023
#Email: avinash.palvadi@ihx.in
##################################################################

echo `TZ="Asia/Calcutta" date`
#cpu use threshold
cpu_threshold='80'
#mem idle threshold
mem_threshold='80'
#disk use threshold
disk_threshold='80'
#---cpu---
cpu_usage () {
cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $8}'|cut -f 1 -d "."`
cpu_use=`expr 100 - $cpu_idle`
 echo "cpu utilization: $cpu_use"
if [ "$cpu_use" -gt "$cpu_threshold" ];
    then
        echo "cpu warning!!!"
    else
        echo "cpu ok!!!"
fi
}
#---mem---
#MB units
mem_usage () {
mem_free=`free -m | grep "Mem" | awk '{print $4+$6}'`
 echo "memory space remaining : $mem_free MB"
if [ $mem_free -lt $mem_threshold  ]
    then
        echo "mem warning!!!"
    else
        echo "mem ok!!!"
fi
}
#---disk---
disk_usage () {
disk_use=`df -P | grep /dev/root | grep -v -E '(tmp|boot)' | awk '{print $5}' | cut -f 1 -d "%"`
 echo "disk usage : $disk_use"
if [ $disk_use -gt $disk_threshold ]
    then
        echo "disk warning!!!"
    else
        echo "disk ok!!!"
fi


}
cpu_usage
mem_usage
disk_usage
