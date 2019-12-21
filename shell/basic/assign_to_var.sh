# $(command) format
OUTPUT=$(ls -1)

echo "===== $ ====="
echo $OUTPUT
echo "===== {} ====="
echo ${OUTPUT}

# `` format
OUT2=`ls -1`
echo $OUT2

