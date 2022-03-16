#!/bin/bash
#andres
#gsavassaladora@gmail.com
#Wed 16 Mar 2022 05:34:13 AM EDT
ip a > info_a.txt
#ipaddress extract
echo -n "I.P (ipv4) address: " > info_b.txt
cat info_a.txt|grep -m3 "inet"|tail -1|cut -d " " -f "6"| cut -d "/" -f"1">>info_b.txt
#loopback ipaddress
echo -n "Loopback I.P address: " >> info_b.txt
cat info_a.txt|grep -m1 "inet"|tail -1|cut -d " " -f "6"| cut -d "/" -f"1">>info_b.txt
#
#macaddress extract
echo -n "MAC Address: " >> info_b.txt
cat info_a.txt|grep -m1 "ether"| cut -d " " -f "6" >> info_b.txt
#ipv6address extract
echo -n "IPV6 Address: " >>info_b.txt
cat info_a.txt|grep  "inet6"|tail -1|cut -d " " -f "6"| cut -d "/" -f "1" >> info_b.txt
ip r >> info_a.txt
#gatewayaddress extracti
echo -n "Gateway Address: " >>info_b.txt
cat info_a.txt|grep -m3 "default"|tail -1|cut -d " " -f "3">> info_b.txt
