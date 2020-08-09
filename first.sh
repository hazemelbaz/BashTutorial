#!/bin/bash


# This is comment line, it will not appear when you are run the file

echo "Hello Hazem Elbaz in Bach Scripting Tutorial"

# Here we create variables and use these variables

name=tea                # here we declear variable
echo "The word $name contains ${#name} chars."      # here we $name for use value of variable, and ${#name} will get count of characeters

echo $((2#111)) # here we convert 111 as binary to decemal 

# Here we demonestrate how to use if statement
num=10

if [ "$num" -gt 0 ];           # -gt this means grater than, -lt means less than 
    then echo "YES";
    else echo "NO";
fi                              # fi, you should use it to end the if statement

# Here we demonastrate For statement

colors="red black white"

for clo in $colors
do 
    echo $clo
done 

#var1=DSLConNeCtioN
#echo hello, ${var1^}  # it will convert 1st letter of text to capital
#echo ${var1,,}        # it will convert all text to capital
#echo ${var1,}         # it will convert 1st letter of text to capital
#echo ${var1^^}        # it will convert all text to capital