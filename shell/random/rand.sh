#how to use it
min=0
max=100
seed=`jot -r 1 $min $max`
res=`awk -v seed=$seed 'BEGIN { srand(seed); printf("%.1f\n", rand() * 100.0) }'`
echo $res

target=100
seed=`jot -r 1 $min $max`
res=`awk -v seed=$seed -v target=$target 'BEGIN { srand(seed); printf("%.1f\n", rand() * 100.0 + target) }'`
echo $res