cd ..
ls

echo "==========Test Start=========="
echo "========value : 2 to 20======="
if [ -e factorization ] ; then
	for i in $(seq 2 20); do
		echo "$i : \c" 
		./factorization $i|cat -e
	done
else
	echo "factorization file does not exist"
	echo "enter 'make' first"

fi
echo

echo "====Started with 0 Test===="
echo "./factorization 000000000036===>\c"
./factorization 000000000036|cat -e
echo 
echo "========================"
echo "=====Error MSG Test====="
echo "========================"
a=-1
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
a=1
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 
echo "===Greater than Max value==="e
a=4294967296
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 
a=5000000000
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 

echo "===More than 2 arguments==="
a=5 
b=12
echo "./factorization $a $b===>\c" 
./factorization $a $b|cat -e
echo 

echo "===Non numeric input==="
a=slkdj
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 
a=23skj
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 
a=23j
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo 
echo "===Minus input test==="e
a=-36
echo "./factorization $a ===>\c" 
./factorization $a|cat -e
echo
echo "=====Max value Test===="
echo "===Input:4294967295===="
echo "Answer:3 5 17 257 65537$"
echo "Result:\c"
./factorization 4294967295|cat -e

:<<'END'
start_time=`date +%s.$N`
start_time_string=`date`

	for i in $(seq 4294967250 4294967295); do
		./factorization $i >> tester/temp
	done
end_time=`date +%s` 
end_time_string=`date`
elapsed_time=`echo "$end_time - $start_time" | bc`
htime=`echo "$elapsed_time/3600" | bc`
mtime=`echo "($elapsed_time/60) - ($htime * 60)" | bc`
stime=`echo "$elapsed_time - (($elapsed_time/60) * 60)" | bc`
echo "Total time : ${htime} H ${mtime} M ${stime} S"
rm -f tester/temp
END
