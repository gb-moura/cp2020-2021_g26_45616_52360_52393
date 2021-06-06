# Simplified simulation of high-energy particle storms

### EduHPC 2018: Peachy assignment

(c) 2018 Arturo Gonzalez-Escribano, Eduardo Rodriguez-Gutiez
Group Trasgo, Universidad de Valladolid (Spain)


------------------------------HOW TO RUN THE PROGRAM--------------------------------------------

How to compile the program: 

Parallel version - make energy_storms_omp

Sequential version - make energy_storms_seq



Arguments:

arg1 -> array size(ver tamanho necessário na especificação do teste)

arg2 -> list of wave files

arg3 -> number of times that we want to run the test

arg4 -> time in seconds for the program to wait to run again

How to run:

1. Compile the program
2. 
    2.1 - Sequential Version:
        Only one test:
		./energy_storms_seq arg1 arg2
        Run the test several times
		./"sequential_script_filename".sh arg3 arg 4


	2.2 - Parallel Version:
	    Only one test:
		./energy_storms_omp arg1 arg2
        Run the test several times 
		./"parallel_script_filename".sh arg3 arg 4

If you want to run the scripts you need to create them as instructed on the "SET UP THE SCRIPTS" zone

------------------------------SET UP THE SCRIPTS-------------------------------------------------


The Scripts were made to run on a linux Ubunto and WSL Ubunto enviornment.

It is necessary to create the files, instead of pushing of the repository, so the script can run without problems

    Sequential Script:

touch "filename".sh\
nano "filename".sh\
copy the code of Script 3 or Script 4, depending on if you want to save the output on a excel file, and paste it on your script file.\
Ctrl+X e enter - to save the file\
cat "filemame".sh -  to see if the script was saved\
chmod +x "filename".sh -  to give kernel permission to run the bash file 


    Parallel Script:

touch "filename".sh\
nano "filename".sh\
copy the code of Script 1 or Script 2, depending on if you want to save the output on a excel file, and paste it on your script file.\
Ctrl+X e enter - to save the file\
cat "filemame".sh -  to see if the script was saved\
chmod +x "filename".sh -  to give kernel permission to run the bash file





-------------------------------------SCRIPTS-----------------------------------------------------

Arguments: \
    arg1 -> array size\
    arg2 -> list of wave files


Script1 - Parallel version to save output on a excel file

#!/bin/sh\
i=0\
while [ $i -ne $1 ]\
do\
        i=$(($i+1))\
        echo "$i"\
	#./print.sh\
	./energy_storms_omp arg1 arg2\
	sleep $2
	
done | tee output_file.csv

Script 2 - Parallel version to only run the test several times

#!/bin/sh\
i=0\
while [ $i -ne $1 ]\
do\
        i=$(($i+1))\
        echo "$i"\
	#./print.sh\
	./energy_storms_omp arg1 arg2\
	sleep $2
	
done

Sequential\
Script 3 - Sequential version to save the output on a excel file
\
#!/bin/sh\
i=0\
while [ $i -ne $1 ]\
do\
        i=$(($i+1))\
        echo "$i"\
	#./print.sh\
	./energy_storms_seq arg1 arg2\
	sleep $2
	
done | tee output_seq_file.csv


Script 4 - Sequential version to run a test several times
#!/bin/sh\
i=0\
while [ $i -ne $1 ]\
do\
        i=$(($i+1))\
        echo "$i"\
	#./print.sh\
	./energy_storms_seq arg1 arg2
	sleep $2
	
done 


--------------------------------------------------------------

