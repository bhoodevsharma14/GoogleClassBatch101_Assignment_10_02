#!/bin/bash -x

	read -p "Enter How Many times you want to flip the coin : " flip_for

	heads=0
	tails=0
	while (($flip_for!=0))
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

		((--flip_for))

	done

	if (($heads==$tails))
	then
		while (($heads==$tails))
		do
			for ((i=1;i<=2;i++))
			do
				flip=$((RANDOM%2))
				case $flip in

				0) ((heads++))
				;;
				1) ((tails++))
				;;
				esac

			done

		done

		if [ $heads -gt $tails ]
		then
			extra_score=$(($heads-$tails))
			echo "After Tie Heads Won by $extra_score"
		else
			extra_scre=$(($tails-$heads))
			echo "After Tie Tails Won by $extra_score"
		fi

	else
		echo "Head Won $heads Times"
		echo "Tail Won $tails Times"
	fi
