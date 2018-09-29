#!/bin/bash

gccgo binarytrees.go -fplugin=/usr/libmago/rbmm.so /usr/libmago/rbmm_builtins.o

for i in `seq 1 30`; do
    echo "$i binarytrees.go 7" >> suite_log_binarytrees_RBMM_RF.txt
    GOGC=off ./a.out 7 >> suite_log_binarytrees_RBMM_RF.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 14 " >> suite_log_binarytrees_RBMM_RF.txt
    GOGC=off ./a.out 14 >> suite_log_binarytrees_RBMM_RF.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 21" >> suite_log_binarytrees_RBMM_RF.txt
    GOGC=off ./a.out 21 >> suite_log_binarytrees_RBMM_RF.txt
done

echo "\n ThEnd"

sh ../matmul/suite.sh
