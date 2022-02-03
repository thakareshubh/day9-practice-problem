#!/bin/bash -x

isPartTime=1
isFullTime=0
totalSalary=0
empRatePerHr=20
numofworkingDays=20

for(( day=1; day<=$numofworkingDays; day++ ))
do
	randomCheck=$((RANDOM%3))

	case $randomCheck in
				$isFullTime )
					empHr=8;
				;;
				$isPartTime )
					empHr=4;
				;;
				*)
					empHr=0;
				;;
	esac

	salary=$(($empHr*$empRatePerHr))
	totalSalary=$(($totalSalary+$salary))
done

