files=("/etc/passwd" "/etc/group" "/etc/hosts")

for i in "${files[@]}"
do
   echo $i
done

