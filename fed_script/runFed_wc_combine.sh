#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
#bin/hadoop fs -rm -r _distcp_logs_*
#bin/hadoop fs -rm -r grepOut 
#bin/hadoop fs -rm -r grepSortedOut 
# collect data from region cloud 
bin/hadoop jar fed_task/wc_combine.jar wc_combine -Dfed=true -Dfedconf=fed_task/wc_combine.xml whatever wcOut > wc_combine_960Ga_log
#bin/hadoop fs -rm -r _distcp_logs_*
# run on local to sort the result
#bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar p2grep grepOut grepSortedOut
