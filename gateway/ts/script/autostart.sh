#!/bin/sh

ps -ef|grep sql_mc|grep -v grep
if [ $? -eq 0 ];then
	echo runing
else 
	echo sql_mc start runing...
	/ts/proc/sql_mc &
fi
ps -ef|grep monitor|grep -v grep
if [ $? -eq 0 ];then
	echo runing
else 
	echo monitor start runing...
	/ts/proc/monitor &
fi
