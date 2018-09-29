#!/bin/bash

for i in `seq 1 3`; do
    echo "$i matmul_v1.go 100" >> suite_log_matmul_MS.txt
    go run matmul_v1.go 100 >> suite_log.txt
done

for i in `seq 1 3`; do
    echo "$i matmul_v1.go 1000" >> suite_log_matmul_MS.txt
    go run matmul_v1.go 1000 >> suite_log_matmul_MS.txt
done

for i in `seq 1 3`; do
    echo "$i matmul_v1.go 5000" >> suite_log_matmul_MS.txt
    go run matmul_v1.go 5000 >> suite_log_matmul_MS.txt
done

echo "\n ThEnd"

sh ../../MS_NOGC/binarytrees/suite.sh
