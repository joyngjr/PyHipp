#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo
echo "#====================================================="

RPLPL_FILENAME="rplpl-slurm.queue1-dy-r5n-2xlarge-1.13.out"
RS1="rs1-slurm.queue1-dy-r5n-2xlarge-1.14.out"
RS2="rs2-slurm.queue1-dy-r5n-2xlarge-2.15.out"
RS3="rs3-slurm.queue1-dy-r5n-2xlarge-3.16.out"
RS4="rs4-slurm.queue1-dy-r5n-2xlarge-4.17.out"

echo "Start Times"
echo
echo "==> $RPLPL_FILENAME <=="
head -n 4 $RPLPL_FILENAME | tail -n 1
echo
echo "==> $RS1 <=="
head -n 1 $RS1
echo
echo "==> $RS2 <=="
head -n 1 $RS2
echo
echo "==> $RS3 <=="
head -n 1 $RS3
echo
echo "==> $RS4 <=="
head -n 1 $RS4
echo
echo "End Times"
echo "==> $RPLPL_FILENAME <=="
tail -n 5 $RPLPL_FILENAME | head -n 1
echo
echo "==> $RS1 <=="
tail -n 5 $RS1 | head -n 1
echo
echo "==> $RS2 <=="
tail -n 5 $RS2 | head -n 1
echo
echo "==> $RS3 <=="
tail -n 5 $RS3 | head -n 1
echo
echo "==> $RS4 <=="
tail -n 5 $RS4 | head -n 1
echo
echo "#====================================================="
