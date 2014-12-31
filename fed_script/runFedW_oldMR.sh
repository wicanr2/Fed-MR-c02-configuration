#!/bin/sh
cd /home/hpds/wjy/FedMR-hadoop-2.4.1/hadoop-2.4.1
bin/hadoop fs -rmr _distcp_logs_*
bin/hadoop fs -rmr old_wc_out
bin/hadoop jar fed_task/wc_old_api.jar -Dfed=true -Dfedconf=fed_task/wc_old_api.xml wordcount2 test1 old_wc_out
bin/hadoop fs -rmr _distcp_logs_*
