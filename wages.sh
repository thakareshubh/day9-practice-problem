#!/bin/bash -x
isPresent=1
randomcheck=$((RANDOM%2))
if [ $isPresent -eq $randomcheck ]
then
	empperHr=20 ;
	workingHr=8 ;
	sallery=$(( $empperHr*$workingHr ))
else
	sallery=0 ;
fi
