echo -e "Enter A File Name :\c"
read file_name

if [ -e $file_name ]
then
  echo $file_name found
else
  echo file not exit.
fi
