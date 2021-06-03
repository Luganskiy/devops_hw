#!/bin/bash
vol_size=$(df -k /home | awk 'FNR == 2 {print $5}')
vol_size=${vol_size%"%"}
echo $vol_size
if [[ $vol_size -gt 7 ]]; then 
	echo "Volume size is $vol_size, which is more then 7%. Report will be sent"
	#send email
	echo -e "Subject: Warning /home volume is more then 7. Please check your storage. " | sendmail luganskiys@gmail.com
fi
