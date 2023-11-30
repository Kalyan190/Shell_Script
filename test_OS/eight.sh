echo -e "Enter the Name of File \c"
read file

if [ -f $file ]
then 
     if [ -w $file ]
     then
       echo "Type some massage then ctr + d "
       cat >> $file
     else
       echo "File do not write permission"
     fi
else
  echo "$file not exist"
fi
