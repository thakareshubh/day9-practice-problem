#!/bin/bash -x

isParttime=1
isFulltime=2
empRateperHr=20
randomcheck=$((RANDOM%3))

if [ $isFulltime -eq $randomcheck ]
then
	emphrs=8
elif [ $isParttime -eq $randomcheck ]
then
	emphrs=4
else
	emphrs=0
fi
	salary=$(($emphrs*$empRateperHr))
