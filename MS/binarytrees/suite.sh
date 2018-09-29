#!/bin/bash

for i in `seq 1 3`; do
    echo "$i binarytrees.go 7" >> suite_log_binarytreesMS.txt
    go run binarytrees.go 7 >> suite_log_binarytreesMS.txt
done

for i in `seq 1 3`; do
    echo "$i binarytrees.go 14 "  >> suite_log_binarytreesMS.txt
    go run binarytrees.go 14 >> suite_log_binarytreesMS.txt
done

for i in `seq 1 3`; do
    echo "$i binarytrees.go 21" >> suite_log_binarytreesMS.txt
    go run binarytrees.go 21 >> suite_log_binarytreesMS.txt
done

echo "\n ThEnd"

sh ../matmul/suite.sh
