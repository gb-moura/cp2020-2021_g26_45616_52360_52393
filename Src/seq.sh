#!/bin/sh
i=0
while [ $i -ne $1 ]
do
        i=$(($i+1))
        echo "$i"
	#./print.sh
	./energy_storms_seq 1000000 test_files/test_07_a1M_p5k_w1
	sleep $2
	
done | tee output_seq_file.csv