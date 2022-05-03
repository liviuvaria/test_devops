#!/bin/bash

a=0
b=1
c=1

fib () {
	nr=0
	for i in $(seq 3 $1)
        do
                nr=$(($b+$c))
                #echo $nr
                b="$c"
                c="$nr"
        done
	echo $nr
}

case $1 in
	0)
		echo 0
		;;
	1)
		echo 1
		;;
	2)
		echo 1
		;;
	*)
		fib $1
esac
