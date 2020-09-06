#!/bin/bash -x

#	read -p "Enter How Many times you want to flip the coin : " flip_for

	heads=0
	tails=0
	while True
	do

		flip=$((RANDOM%2))

		if [ $flip -eq 0 ]
		then
			((heads++))
		else
			((tails++))
		fi

		if (( $heads==21 || $tails==21 ))
		then
			break
		fi

	done

	echo "Head Won $heads Times"
	echo "Tail Won $tails Times"
