# 2. Write a shell script to read any number and check if the number is factorial of any other number of not.
echo "Enter A Number"
read number
num="$number"
fact=1
for((i=1; i<=100;i++))
do
   num=$(($num/$i)) | bc -l
    if [ $num -eq 1 ]; then
    fact=$i
    break
    fi
done
if [ $num -eq 1 ]; then
   echo "$number is a factorial of $fact " 
else
    echo "$number is not a factorial of any number"
fi
