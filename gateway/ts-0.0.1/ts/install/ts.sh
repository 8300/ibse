source /ts/install/profile
sleep 1
chmod +x /ts/proc/*
chmod +x /ts/script/*
chmod +x /ts/proc/script/*
adduser mosquitto
/ts/proc/mosquitto &
sleep 3
sh /ts/script/sysset.sh
/ts/proc/sql_select &
/ts/proc/sql_update &

/ts/proc/sql2html
sleep 1
#/ts/proc/webserver &
/ts/proc/sql_from_mqtt
sleep 2
/ts/proc/sql2html
/ts/proc/sql2file
sleep 1 
/ts/proc/monitor &
cp -R /ts/script/spool /var
sync
sleep 1
crond
