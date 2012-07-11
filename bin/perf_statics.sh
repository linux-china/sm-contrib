#!/bin/bash
##################################################
declare DATE=`date +%m/%d/%Y`
declare TIME=`date +%k:%M:%S`
declare USERS=`uptime | sed 's/users.*$//' | gawk '{print $NF}'`
declare LOAD=`uptime | gawk '{print $NF}'`
declare FREE=`/usr/bin/vm_stat 1 2 | sed -n '/[0-9]/p' | sed -n '2p' | gawk '{print $4}'`
declare IDLE=`/usr/bin/vm_stat 1 2 | sed -n '/[0-9]/p' | sed -n '2p' | gawk '{print $15}'`
#########################################
# Send Statistics
#########################################
echo "=================="
echo "DATE: ==> ${DATE}"
echo "TIME: ==> ${TIME}"
echo "USERS: ==> ${USERS}"
echo "LOAD: ==> ${LOAD}"
echo "FREE: ==> ${FREE}"
echo "IDLE: ==> ${IDLE}"
echo "=================="
