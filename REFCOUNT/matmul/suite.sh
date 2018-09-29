#!/bin/bash

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log_matmul_REFCOUNT.txt
    GOGC=off go run matmul_v1.go 100 >> suite_log_matmul_REFCOUNT.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log_matmul_REFCOUNT.txt
    GOGC=off go run matmul_v1.go 1000 >> suite_log_matmul_REFCOUNT.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log_matmul_REFCOUNT.txt
    GOGC=off go run matmul_v1.go 5000 >> suite_log_matmul_REFCOUNT.txt
done

echo "\n ThEnd"

sh ../../RBMM_RF/binarytrees/suite.sh
