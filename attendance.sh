#!/bin/bash -x
random=$((RANDOM%2));
ispresent=1;
if [ $ispresent -eq $random ]
then
	echo "Employee is present" ;
else
	echo "Employee is absent";
fi
