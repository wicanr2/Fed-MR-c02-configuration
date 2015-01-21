#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
#bin/hadoop fs -rm -r _distcp_logs_*
#bin/hadoop fs -rm -r new_wc_out 
#setsid bin/hadoop jar fed_task/word_count_new_api.jar -Dfed=true -Dfedconf=fed_task/wc_960g.xml wordcount1 test1 amazone_1080g 2>&1 > amazone_1080Glog2
setsid bin/hadoop jar hadoop-mapreduce-examples-2.4.1.jar wordcount -Dfed=true -Dfedconf=fed_task/wc_960g.xml test1 960g 2>&1 | tee 960g 
#2 >& 1 | tee  wc_log
#bin/hadoop fs -rm -r _distcp_logs_*
