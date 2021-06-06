#!/bin/sh
i=0
while [ $i -ne $1 ]
do
        i=$(($i+1))
        echo "$i"
	#./print.sh
	./energy_storms_omp 17 test_files/test_09_a16-17_p3_w1
	sleep $2
	
done | tee output_file.csv

