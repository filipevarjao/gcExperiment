#!/bin/bash

gccgo matmul_v1.go -fplugin=/usr/libmago/rbmm.so /usr/libmago/rbmm_builtins.o

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 100" >> suite_log.txt
    GOMAXPROCS=1 ./a.out 100 >> suite_log.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 1000" >> suite_log.txt
    GOMAXPROCS=1 ./a.out 1000 >> suite_log.txt
done

for i in `seq 1 30`; do
    echo "$i matmul_v1.go 5000" >> suite_log.txt
    GOMAXPROCS=1 ./a.out 5000 >> suite_log.txt
done

echo "\n ThEnd"
