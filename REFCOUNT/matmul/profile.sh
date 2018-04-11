#!/bin/bash
#Script Variables
output_file="sar_data_100.txt"
interval=1

LC_ALL=C sar -bBdqrRSvwWy -I SUM -I XALL -u ALL -P ALL $interval  > $output_file &
pid=$!

sleep 1

#GOGC=off go run matmul_v1.go 5000

GOGC=off go run matmul_v1.go 100
kill $pid

echo "\n ThEnd"
