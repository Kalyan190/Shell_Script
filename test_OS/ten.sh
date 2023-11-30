#use for Loop
for i in 1 2 3 4 5
do
   echo $i
done

echo other for loop
# use for loop for other
# {start..condition..increment} -->> eg. {1..10..2}
for i in {1..10..2}
do
   echo $i
done

# use for loop
echo ls command and date

for i in ls pwd date
do
   echo "------------$i---------------"
   $i
done
