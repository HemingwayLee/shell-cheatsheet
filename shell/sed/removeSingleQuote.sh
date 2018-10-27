coins=("'btc'" "'ltc'" "'doge'")

for i in "${coins[@]}"
do
  #remove single quote
  filename=`echo $i | sed "s/'//g"`
  echo $filename
done

