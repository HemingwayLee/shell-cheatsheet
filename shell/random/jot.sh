#how to use it
min=0
max=100
jot -r 1 $min $max

#use it with if else
rand=`jot -r 1 0 1`
if [ $rand = 0 ]; then
  echo "true";
else
  echo "false";
fi

#use it in another way
rand2=`jot -r 1 0 1`
res=$(if [ $rand = 0 ]; then echo "yes"; else echo "no"; fi)
echo $res