echo use if else condition
count=10

if [ $count -eq 9 ] 
then
   echo "Condition A is true"
elif [ $count == 10 ]
then 
   echo condition B is true;
else
   echo conditon is false
fi
