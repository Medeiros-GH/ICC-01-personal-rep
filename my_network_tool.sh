#!/bin/bash

echo
echo "**** Networking Tool ****"
echo
echo "1) Check Network Interface Information"
echo "2) Ping a Host"
echo "3) Port Scan with Nmap"
echo "4) Display Routing Table"
echo "5) Traceroute to Host"
echo "6) Exit"
echo
read -p "Select a command: " option

if [ $option -eq "1" ]; then
ip a

elif [ $option -eq "2" ]; then
read -p "Enter the Host IP adress: " host
result=$(ping -c 4 "$host")
echo "$result"

elif [ $option -eq "3" ]; then
read -p "Enter the Host IP adress or domain: " host
read -p "Enter the port range to scan: " port_range
echo "Scanning ports $port_range on $host"
nmap -p "$port_range" "$host"

elif [ $option -eq "4" ]; then
echo "Displaying routing table using ip route command: " 
ip route show

elif [ $option -eq "5" ]; then
read -p "Enter the host or IP address: " host
echo "Tracing route to $host"
traceroute "$host"

elif [ $option -eq "6" ];then 
exit 0

else
echo "Select a option [1-6]"
exit 1

fi 