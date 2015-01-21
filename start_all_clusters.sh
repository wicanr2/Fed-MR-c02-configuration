#!/bin/sh
sbin/start-all.sh
sbin/mr-jobhistory-daemon.sh start historyserver
for i in  07 13 19
do
  ssh c$i "cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1 && sbin/start-all.sh"
  ssh c$i "cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1 && sbin/mr-jobhistory-daemon.sh start historyserver"
done

