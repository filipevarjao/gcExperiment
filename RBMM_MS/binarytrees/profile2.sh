#!/bin/bash
output_file="sar_data_binarytrees_14.txt"
interval=1

LC_ALL=C sar -bBdqrRSvwWy -I SUM -I XALL -u ALL -P ALL $interval  > $output_file &
pid=$!

sleep 1

#GOGC=off go run binarytrees.go 21
./a.out 14

kill $pid
echo "\n ThEnd"
