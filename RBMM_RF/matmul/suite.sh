#!/bin/bash

gccgo matmul_v1.go -fplugin=/usr/libmago/rbmm.so /usr/libmago/rbmm_builtins.o

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log_matmul_RBMM_RF.txt
    GOGC=off ./a.out 100 >> suite_log_matmul_RBMM_RF.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log_matmul_RBMM_RF.txt
    GOGC=off ./a.out 1000 >> suite_log_matmul_RBMM_RF.txt
done

for i in `seq 12 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log_matmul_RBMM_RF.txt
    GOGC=off ./a.out 5000 >> suite_log_matmul_RBMM_RF.txt
done

echo "\n ThEnd"
