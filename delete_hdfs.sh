#!/bin/sh
for i in  07 13 19
do 
   ssh c$i ~/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1/bin/hadoop fs -rm -r c$i*
done
