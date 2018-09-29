#!/bin/bash

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log_matmul_MS_NOGC.txt
    GOGC=off go run matmul_v1.go 100 >> suite_log_matmul_MS_NOGC.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log_matmul_MS_NOGC.txt
    GOGC=off go run matmul_v1.go 1000 >> suite_log_matmul_MS_NOGC.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log_matmul_MS_NOGC.txt
    GOGC=off go run matmul_v1.go 5000 >> suite_log_matmul_MS_NOGC.txt
done

echo "\n ThEnd"

sh ../../GCC_MS/binarytrees/suite.sh
