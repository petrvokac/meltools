#!/bin/bash
# list directories for all running melcor jobs
# Petr Vokac, UJV Rez, a.s.
# 26.3.2018
proceses=$(ps -ax | awk '($5=="melcor") {print $1}')
n=$(echo $proceses | wc -w)
if [ $n = 0 ]
then
   echo "no melcor (1.8.6) process found"
else
   pwdx $proceses 
fi    
#
