#!/bin/sh
sbin/stop-all.sh
for i in 07 13 19
do
  ssh c$i "cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1 && sbin/stop-all.sh"
done

