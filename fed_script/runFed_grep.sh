#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
bin/hadoop fs -rm -r _distcp_logs_*
bin/hadoop fs -rm -r grepOut 
bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar grep -Dfed=true -Dfedconf=fed_task/grep.xml 6G grepOut xx 
bin/hadoop fs -rm -r _distcp_logs_*
#run local 
bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar grep 6G grepOutLocal unpredict
