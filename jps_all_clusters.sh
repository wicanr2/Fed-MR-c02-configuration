#!/bin/sh
echo "!!machine b09 java process!!!"
jps
for i in 10 11 12
do
  echo "\n!!!machine b0$i java process!!!"
  ssh b$i jps
done

