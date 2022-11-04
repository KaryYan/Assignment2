#!/bin/bash

csv_file=$1 #To set up the positional parameter.

function infraction {
	cut -d, -f4 < $csv_file | sort | uniq
} #To display all parking infractions without duplicate.

function mean {
	cat $csv_file | awk -F',' '{sum+=$5} END {print "Mean of set fine amount is " sum/NR}'
} 
#This code is from https://stackoverflow.com/questions/18726715/how-to-compute-the-average-of-a-column-in-a-csv-file
#Sum of all lines of column 5 in the file will be calculated.
#When all lines have been read, the reading process will end.
#NR is equal to the number of rows in the file.

function maxmin {
	cut -d, -f5 < $csv_file | sort -n | {
		read line
		echo "Minimum value is $line"
		while read line; do
			max=$line;
		done
		echo "Maximum value is $max"
	}	
}
#The code is from https://stackoverflow.com/questions/29783990/awk-find-minimum-and-maximum-in-column
#First we sort the value from smallest to biggest in this column.
#Using read line, we first echo the first line being read which represents the min.
#When the read is done where the biggest value has been read, we echo the last read which represents the max.

function save {
	cut -d, -f4,5,8 <$csv_file | head -n1 > header.csv #To add the header into the new csv file.
	cut -d, -f4,5,8 < $csv_file | sort | grep "PARK ON PRIVATE PROPERTY" > content.csv #To add the contents to the new csv file.
	cat header.csv content.csv > "sorted parking.csv" #To merge the two files with header being the first part.
} 


echo "All the parking infractions are listed below: "
infraction #To show all parking infration types.
echo "For the set fine amount: "
mean #To show the mean of the set fine amount column.
maxmin #To show the max and min of the set fine amount column.
save #To save the parking infraction of choice and related info.
echo "The parking infraction of choice has been saved to a new csv file..."