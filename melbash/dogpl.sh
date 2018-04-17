#!/bin/bash
# run gnuplot for all gpl scripts in the directory
# Petr Vokac, UJV Rez, a.s.
# 2.10.2017
for f in *.gpl
do
 echo $f
 gnuplot $f
done
echo "done"



