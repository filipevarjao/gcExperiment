#!/bin/bash
output_file="sar_data_binarytrees_7.txt"
interval=1

LC_ALL=C sar -bBdqrRSvwWy -I SUM -I XALL -u ALL -P ALL $interval  > $output_file &
pid=$!

sleep 1

#GOGC=off go run binarytrees.go 21
GOGC=off ./a.out 7

kill $pid
echo "\n ThEnd"
