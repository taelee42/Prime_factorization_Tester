cd ..

if [ -e factorization ] ; then
	echo "==========Test Start=========="
	echo "========value : 2 to 20======="
	for i in $(seq 2 20); do
		echo "$i : \c" 
		./factorization $i|cat -e
	done

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
	echo "===Greater than long long range value==="e
	a=5000000000
	echo "./factorization $a ===>\c" 
	./factorization $a|cat -e
	echo 
	a=100000000000000000000
	echo "./factorization $a ===>\c" 
	./factorization $a|cat -e
	echo 

	echo "===More than 1 argument==="
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
	echo "====Started with 0 value===="
	echo "./factorization 000000000036===>\c"
	./factorization 000000000036|cat -e
	echo 
	echo "=====Max value Test===="
	echo "===Input:4294967295===="
	echo "Answer:3 5 17 257 65537$"
	echo "Result:\c"
	./factorization 4294967295|cat -e


else
	echo "factorization file does not exist"
	echo "enter 'make' first"

fi
echo

