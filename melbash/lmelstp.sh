#!/bin/bash
# stops all melcor jobs, assuming stop file is MELSTP
# Petr Vokac, UJV Rez, a.s.
# 19.5.2018
for f in $(lmelcor.sh | awk '($1 ~ "[0-9]*:") {printf("%s/MELSTP\n",$2)}')
do
 echo $f
 touch $f
done
