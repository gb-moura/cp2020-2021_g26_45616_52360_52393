#!/bin/sh
i=0
while [ $i -ne $1 ]
do
        i=$(($i+1))
        echo "$i"
	#./print.sh
	./energy_storms_seq 30000 test_files/test_02_a30k_p20k_w1
	sleep $2

done | tee output_seq_file.csv
