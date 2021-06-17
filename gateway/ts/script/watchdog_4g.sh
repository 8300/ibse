while true;
do
	server=`ifconfig | grep ppp0 | grep -v grep`
	if [ ! "$server" ]; then
	/ts/script/gprs-off.sh
	sleep 3
	/ts/script/gprs-on.sh
	sleep 3
	/ts/script/ts-dial.sh
echo no exist
	fi
echo fdsf
	sleep 5
done
                                                      
                                                      
