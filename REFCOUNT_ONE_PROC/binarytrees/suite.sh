#!/bin/bash

for i in `seq 1 30`; do
    echo "$i binarytrees.go 7" >> suite_log_binarytrees.txt
    GOGC=off GOMAXPROCS=1 go run binarytrees.go 7 >> suite_log_binarytrees.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 14 " >> suite_log_binarytrees.txt
    GOGC=off GOMAXPROCS=1 go run binarytrees.go 14 >> suite_log_binarytrees.txt
done

for i in `seq 1 30`; do
    echo "$i binarytrees.go 21" >> suite_log_binarytrees.txt
    GOGC=off GOMAXPROCS=1 go run binarytrees.go 21 >> suite_log_binarytrees.txt
done

echo "\n ThEnd"
