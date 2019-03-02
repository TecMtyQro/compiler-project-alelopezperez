#!/bin/bash
cat small-program-8.d | ./a.out > ans1.txt

for f in *.d
do
	cat "$f" | ./a.out > "GeneratedTokens/${f%.d}.token"
done


i=1
for f in GeneratedTokens/*.token
do
	
	if [ "$#$(diff $f CorrectANS/$(basename "$f"))" == 0 ] 
	then
		echo "Test $i aproved"
	else
		echo "Test $i Failed"
	fi
	i=$((i+1))
done
