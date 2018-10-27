# handle comment in ini file
value=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /abc/) print $2}' setting.ini)

no_space="$(echo "${value}" | tr -d '[:space:]')"

echo "$no_space"



values=$(awk -F '=' '{if (! ($0 ~ /^;/) && $0 ~ /def/) print $2}' setting.ini)

no_spaces="$(echo "${values}" | tr -d '[:space:]')"

echo "$no_spaces"

for i in $(echo $no_spaces | sed "s/,/ /g")
do
    echo "$i"
done
