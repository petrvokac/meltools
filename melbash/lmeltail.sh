#!/bin/bash
# tail nohup.out for all running melcor jobs
# Petr Vokac, UJV Rez, a.s.
# 2.10.2017
for f in $(lmelcor.sh | awk '($1 ~ "[0-9]*:") {printf("%s/nohup.out\n",$2)}')
do
 echo $f
 tail -n 3 $f
done
