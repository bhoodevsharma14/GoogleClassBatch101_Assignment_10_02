#!/bin/bash -x

	read -p "Enter How Many times you want to flip the coin : " flip_for

	heads=0
	tails=0
	while (($flip_for))
	do

		flip=$((RANDOM%2))

		if [ $flip -eq 0 ]
		then
			((heads++))
		else
			((tails++))
		fi

		((flip_for--))

	done

	echo "Head Won $heads Times"
	echo "Tail Won $tails Times"
