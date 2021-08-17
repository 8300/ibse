source /ts/install/profile
sleep 1
chmod +x /ts/proc/*
chmod +x /ts/script/*
chmod +x /ts/proc/script/*
#adduser mosquitto -p root
/ts/proc/mosquitto &
sleep 3
sh /ts/script/sysset.sh
/ts/proc/sql2file
/ts/proc/webserver &
/ts/proc/sql2html
#sh /ts/script/net_tmp.sh
sleep 1
/ts/proc/sql_select &
/ts/proc/sql_update &
sleep 1 
/ts/proc/monitor &
cp -R /ts/script/spool /var
sync
sleep 1
crond
