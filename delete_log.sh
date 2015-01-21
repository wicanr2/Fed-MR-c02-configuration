#!/bin/sh
for i in 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19  21 22 23 24 25 26 27 28
do
  echo "\n!!!delete c$i hadoop logs"
  ssh c$i rm -r -f /home/hpds/zien/FedMR-hadoop-2.4.1-time/hadoop-2.4.1/logs/*
done

