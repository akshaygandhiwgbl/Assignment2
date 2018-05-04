#! /bin/bash
echo "Enter name of dir":
read filename
mkdir $filename
cd $filename
for((i=1;i<=4;i++))
do
    touch $filename$i
done
 zip -r $filename.zip $filename *

len=${#filename}
for (( i=$len-1; i>=0; i-- ))
do
# "${string:$i:1}"extract single single character from string.
reverse="$reverse${filename:$i:1}"
done
mkdir $reverse
unzip $filename.zip -d $reverse/$filename
for((i=1;i<=4;i++))
do
cp $filename$i $reverse
done
cd $reverse
rm -r $filename
