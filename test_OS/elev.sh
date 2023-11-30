#for loop 
#-d use for current directory

for i in *
do
  if [ -d $i ] # check directory or not
  then
    echo $i #print all directory 
  fi
done
