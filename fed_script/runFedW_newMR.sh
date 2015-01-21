#!/bin/sh
cd /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1
bin/hadoop fs -rm -r _distcp_logs_*
bin/hadoop fs -rm -r new_wc_out 
bin/hadoop jar fed_task/word_count_new_api.jar -Dfed=true -Dfedconf=fed_task/wc_new_api.xml wordcount2 test1 new_wc_out > 960Ga_log2
#2 >& 1 | tee  wc_log
bin/hadoop fs -rm -r _distcp_logs_*
