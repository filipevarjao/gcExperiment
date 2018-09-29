#!/bin/bash

for i in `seq 1 30`; do
    echo "$i binarytrees.go 7" >> suite_log_binarytrees_REFCOUNT.txt
    GOGC=off go run binarytrees.go 7 >> suite_log_binarytrees_REFCOUNT.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 14 " >> suite_log_binarytree_REFCOUNTs.txt
    GOGC=off go run binarytrees.go 14 >> suite_log_binarytrees_REFCOUNT.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 21" >> suite_log_binarytrees_REFCOUNT.txt
    GOGC=off go run binarytrees.go 21 >> suite_log_binarytrees_REFCOUNT.txt
done

echo "\n ThEnd"

sh ../matmul/suite.sh
