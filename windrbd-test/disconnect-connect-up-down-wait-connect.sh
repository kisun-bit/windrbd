#!/bin/bash

RES=w0
j=0

while true
do
	j=$[ $j+1 ]

	echo Up $j
	drbdadm up $RES
	i=0
	while [ $i -lt 20 ]
	do
		i=$[ $i+1 ]
		echo Disconnect $i
		drbdadm disconnect $RES
		sleep 5
		echo Connect $i
		drbdadm connect $RES
#		echo Connected $i
#		drbdadm wait-connect $RES
		sleep 5
	done
        
	echo Down $j
	drbdadm down $RES
done
