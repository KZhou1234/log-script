#!/bin/bash

#Create a BASH script that will search the log file for "404" errors 
#identify the IP addresses associated with them. 
#Then provide the number of times each IP encountered a 404.
#get 404 errors


grep " 404 " web-server-access-logs.log > 404_logs.log 
#`grep " 404 "` instead of `grep "404"` to avoid catching other possible strings associate with "404"

#example pattern: 3089189,"5.210.140.170 - - [23/Jan/2019:12:43:40 +0330] ""GET /apple-touch-icon-120x120.png HTTP/1.1"" 404 33679 ""-"" ""MobileSafari/604.>
#get the ip address

#do the `awk` twice, use " and space as delimiters 
awk -F'\"' '{print $2}' 404_logs.log | awk '{print $1}' > 404_ip_logs_temp.log 

#sort the temp file, use uniq -c to count occurrence of each unique IP address 
echo "Occurrence	IP address" > 404_ip_logs.log
sort 404_ip_logs_temp.log | uniq -c | sort -r >> 404_ip_logs.log
rm 404_ip_logs_temp.log
echo "Counting each IP that encountered a 404 error is done!"
