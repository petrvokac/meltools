#!/bin/bash
# list directories for all running melcor2 jobs
# Petr Vokac, UJV Rez, a.s.
# 2.10.2017
proceses=$(ps -ax | awk '($5=="melcor2") {print $1}')
n=$(echo $proceses | wc -w)
if [ $n = 0 ]
then
   echo "no melcor2 process found"
else   
   pwdx $proceses 
fi    
#
