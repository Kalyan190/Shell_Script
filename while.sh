#while loop create
count=1
while [ $count -le 9 ]
do 
  echo "Count: $count"
  count=$((count + 1))
done
