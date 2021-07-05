while true;
do
	server=`ps aux | grep test| grep -v grep`
	if [ !"$server" ]; then
		/ts/proc/test 
echo 1111111
	fi
echo fdsfadsf
	sleep 5
done
                                                      
                                                      
