#!/bin/bash

gccgo binarytrees.go

for i in `seq 1 30`; do
    echo "$i binarytrees.go 7" >> suite_log_binarytrees_GCC_MS.txt
    ./a.out 7 >> suite_log_binarytrees_GCC_MS.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 14 " >> suite_log_binarytrees_GCC_MS.txt
    ./a.out 14 >> suite_log_binarytrees_GCC_MS.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 21" >> suite_log_binarytrees_GCC_MS.txt
    ./a.out 21 >> suite_log_binarytrees_GCC_MS.txt
done

echo "\n ThEnd"

sh ../matmul/suite.sh
