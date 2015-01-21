#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
#bin/hadoop fs -rm -r _distcp_logs_*
bin/hadoop fs -rm -r grepOut 
bin/hadoop fs -rm -r grepSortedOut 
# collect data from region cloud 
bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar grep -Dfed=true -Dfedconf=fed_task/grep.xml 160Grand grepOut unpredic > grep_480
#bin/hadoop fs -rm -r _distcp_logs_*
# run on local to sort the result
bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar p2grep grepOut grepSortedOut
