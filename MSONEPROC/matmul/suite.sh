#!/bin/bash

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log.txt
    GOMAXPROCS=1 go run matmul_v1.go 100 >> suite_log.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log.txt
    GOMAXPROCS=1 go run matmul_v1.go 1000 >> suite_log.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log.txt
    GOMAXPROCS=1 go run matmul_v1.go 5000 >> suite_log.txt
done

echo "\n ThEnd"
