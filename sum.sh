#Sum of all digit calculate
total=0;
until [ $total -ge 10 ]
do
  sum=$((sum + total))
  total=$((total + 1))
done
echo "Total Digit Sum : $sum"
