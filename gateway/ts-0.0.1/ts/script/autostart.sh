#!/bin/sh

ps -ef|grep sql_update|grep -v grep
if [ $? -eq 0 ];then
	echo runing
else 
	echo sql_update start runing...
	/ts/proc/sql_update &
fi
ps -ef|grep sql_select|grep -v grep
if [ $? -eq 0 ];then
	echo runing
else 
	/ts/proc/sql_select &
fi
