#!/bin/bash -x

	flip=$((RANDOM%2))

	if [ $flip -eq 0 ]
	then
		echo "Winner is 'Heads'"
	else
		echo "Winner is 'Tails'"
	fi

