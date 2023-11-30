#using for loop basic
text="I Love India"
for word in $text
do
echo "$word"
done
#Again for loop same question
sentence="I love India"
for word in $sentence
do
echo " $word"
done
#for loop for set 
for val in {1,2,3,4,5}
do
echo "$val"
done
# for loop for output command
for file in $(ls)
do
echo "Processing file: $file"
done
# for loop for array
colors=("red" "green" "blue")
for color in "${colors[@]}"
do
echo "Color: $color"
done
