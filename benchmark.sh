echo -e "테스트케이스의 최댓값을 입력하세요 (3 ~ 4294967295)"
read size
echo "===2부터 $size 까지 테스트를 진행합니다==="
cd ..
start_time=`date +%s.$N`
start_time_string=`date`

	for (( i = 2; i <= $size; i++ )) do
		./factorization $i >> temp_benchmark
	done
end_time=`date +%s.$N`
end_time_string=`date`
elapsed_time=`echo "$end_time - $start_time" | bc`
htime=`echo "$elapsed_time/3600" | bc`
mtime=`echo "($elapsed_time/60) - ($htime * 60)" | bc`
stime=`echo "$elapsed_time - (($elapsed_time/60) * 60)" | bc`
echo "Total time : ${htime} H ${mtime} M ${stime} S"
