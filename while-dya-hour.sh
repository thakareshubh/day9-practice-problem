#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRatePerMonth=100
empRateperHr=20
numofworkingDays=20
totalEmpHr=0
totalworkingDays=0

while [[ $totalEmpHr -lt $maxRatePerMonth &&
	$totalworkingDays -lt $numofworkingDays ]]
do
	((totalworkingDays++))
	random=$((RANDOM%3))
	case $random in
			$isFullTime )
				empHrs=8
				;;
			$isPartTime )
				empHrs=4
				;;
			*)
				empHrs=0
				;;
	esac

		totalEmpHr=$(($totalEmpHr+$empHrs))
done

	salary=$(($empRateperHr*$totalEmpHr))
