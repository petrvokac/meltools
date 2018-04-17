#!/bin/bash
# tail nouhup.out for all running melcor2 jobs
# Petr Vokac, UJV Rez, a.s.
# 2.10.2017
# 26.3.2018, second cycle for MELCOR 1.8.6
for f in $(lmelcor2.sh | awk '($1 ~ "[0-9]*:") {printf("%s/nohup.out\n",$2)}')
do
 echo $f
 tail -n 3 $f
done
for f in $(lmelcor.sh | awk '($1 ~ "[0-9]*:") {printf("%s/nohup.out\n",$2)}')
do
 echo $f
 tail -n 3 $f
done
#
