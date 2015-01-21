#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
bin/hadoop fs -rm -r wcOut2
#bin/hadoop fs -rm -r _distcp_logs_*
# collect data from region cloud 
setsid bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar wordcount -Dfed=true -Dfedconf=fed_task/wc_combine.xml -Dmapreduce.job.maps=4 -Dmapreduce.job.reduces=4 we wcOut2 2>&1 | tee wc_960Ga_log14
#bin/hadoop fs -rm -r _distcp_logs_*
# run on local to sort the result
