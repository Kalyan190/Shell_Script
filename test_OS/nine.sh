read -p "Enter A Number : " n
i=1
while [ $i -le $n ]
do
    echo "$i"
    (( i++ ))
    sleep 1
done

