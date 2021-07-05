source /ts/install/profile
sleep 1
chmod +x /ts/proc/*
chmod +x /ts/script/*
chmod +x /ts/proc/script/*
#adduser mosquitto -p root
sleep 13
/ts/proc/sql_to_json
sh /ts/script/sysset.sh
#sh /ts/script/net_tmp.sh
sleep 5
/ts/proc/mosquitto &
/ts/proc/sql_mc &
sleep 1 
/ts/proc/monitor &
cp -R /ts/script/spool /var
sync
sleep 1
crond
