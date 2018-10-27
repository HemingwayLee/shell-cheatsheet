#it is much faster that generating the csv in memory
# because it is too many IO in this shell script

rm data.csv

pairs=("BTC_XRP" "JPY_LTC" "USD_DOG")

#how to use it
min=0
max=100

x=0
while [ $x -le 10 ]
do
  random=`jot -r 1 0 1`
  side=$(if [ $random = 0 ]; then echo "true"; else echo "false"; fi)
  target=$(if [ $random = 0 ]; then echo "100.0"; else echo "0.0"; fi)

  seed=`jot -r 1 $min $max`
  price=`awk -v seed=$seed -v target=$target 'BEGIN { srand(seed); printf("%.1f\n", rand() * 100.0 + target) }'`
  
  seed=`jot -r 1 $min $max`
  size=`awk -v seed=$seed 'BEGIN { srand(seed); printf("%.1f\n", rand() * 100.0) }'`
  
  upperbound=$(( ${#pairs[@]} - 1 ))
  idx=`jot -r 1 0 $upperbound`

  uuid=`uuidgen`

  echo "$uuid,$price,$size,$side,${pairs[$idx]}" >> data.csv
  x=$(($x + 1))
done

cat data.csv