#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
random=$((RANDOM%3))

case $random in
		$isPartTime )
			empHrs=4
			;;
		$isFullTime )
			empHrs=8
			;;
		*)
			empHrs=0
			;;
esac
	salary=$(($empHrs*$empRatePerHr))


