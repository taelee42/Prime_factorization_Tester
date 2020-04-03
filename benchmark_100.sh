cd ..
start_time=`date +%s.$N`
start_time_string=`date`

	for (( i = 4294967196; i <= 4294967295; i++ )) do
		./factorization $i >> temp_benchmark
	done
end_time=`date +%s.$N`
end_time_string=`date`
elapsed_time=`echo "$end_time - $start_time" | bc`
htime=`echo "$elapsed_time/3600" | bc`
mtime=`echo "($elapsed_time/60) - ($htime * 60)" | bc`
stime=`echo "$elapsed_time - (($elapsed_time/60) * 60)" | bc`
echo "Total time : ${htime} H ${mtime} M ${stime} S"
