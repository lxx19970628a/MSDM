#!/bin/bash
#

mkdir $(seq -f 'DDM%01g' 1 100)

for  dir  in  `ls .`
do 
   if  [ -d $dir ]
   then
     cd $dir
     echo "nanoseconds since 1970-01-01 00:00:00 UTC:" > time till now.txt
     date +%s >> time till now.txt
     cd ..
   fi
done 
