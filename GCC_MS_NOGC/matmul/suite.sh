#!/bin/bash

gccgo matmul_v1.go

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log_matmul_GCC_MS_NOGC.txt
    GOGC=off ./a.out 100 >> suite_log_matmul_GCC_MS_NOGC.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log_matmul_GCC_MS_NOGC.txt
    GOGC=off ./a.out 1000 >> suite_log_matmul_GCC_MS_NOGC.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log_matmul_GCC_MS_NOGC.txt
    GOGC=off ./a.out 5000 >> suite_log_matmul_GCC_MS_NOGC.txt
done

echo "\n ThEnd"

sh ../../REFCOUNT/binarytrees/suite.sh
