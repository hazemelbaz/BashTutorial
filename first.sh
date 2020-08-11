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

for n in {0..5}
do 
    echo "The index [$n]"
done


#var1=DSLConNeCtioN
#echo hello, ${var1^}  # it will convert 1st letter of text to capital
#echo ${var1,,}        # it will convert all text to capital
#echo ${var1,}         # it will convert 1st letter of text to capital
#echo ${var1^^}        # it will convert all text to capital

let val=500/2
echo $val

val2= echo $val
echo $val2

let val3=100*30         # Here * means Muliplying 
let val4=3**3           # Here ** means Power
echo $val3
echo $val4


# New way to write if statement 
let num1=20
if [ "$num1" -lt 15 ] 
then 
    echo YES YES
else
    echo NO NO
fi

# Here another way to write if statemnet
let num2=10
echo $(( num2 = num1<10?1:0))


# Here We learn How implement ARRAY
days=(Sat Sun Mon Tue Wed Thr Fri)      # Ref To ARRAY https://tecadmin.net/working-with-array-bash-script/

# Here create loop 
echo {0..9}
echo {100..120}

# Here we learn logical OR and Logical AND
let test=1
if [ "$test" -gt 0 ] || [ "$test" -eq 10 ]   # Here || means logical OR
then
    echo "The conditions are true"
else
    echo "The conditions are false"
fi

if [ "$test" -gt 0 ] && [ "$test" -eq 10 ]   # Here && means logical AND
then
    echo "The conditions are true"
else
    echo "The conditions are false"
fi


# Here we learn / % + *   Ref: https://bash.cyberciti.biz/guide/Perform_arithmetic_operations
let num3=5
let num4=3
let result=0

result=$(( num3 / num4 ))
echo $result

result=$(( num3 % num4 ))
echo $result

result=$(( num3 * num4 ))
echo $result

# Here learn how read data from promot, get input from screen 
echo "Enter your name: "
read name1
echo $name1



# Here we learn about Condition Statements Ref: https://linuxize.com/post/bash-if-else-statement/
# Neasted Condition

let num5=9

if [[ $num5 -gt 0 ]]
then
    if [[ $num5 -lt 5 ]]
    then
        echo "Num GT 0 and LT 5"
    fi
elif [[ $num5 -eq 9 ]]
then
    echo "Its Num 9"
else
    echo "I dont Konw"
fi 


echo -n "Enter a number: "
read VAR

if [[ $VAR -gt 10 ]]
then
  echo "The variable is greater than 10."
elif [[ $VAR -eq 10 ]]
then
  echo "The variable is equal to 10."
else
  echo "The variable is less than 10."
fi



# Bash Scripting CheatSheet : https://devhints.io/bash

# Here we learn retuen vales of command line when you are write 

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

if [ $# -ne "$NO_OF_ARGS" ]         # the $# means thre numbers of command line arguments, -ne means not equal
then
    echo " Usage: 'basename $0' testfile1 testfile2"     # $0 means the name of script writing now (name of current file)
exit $E_BADARGS
fi

if [[ ! -r "$1" || ! -r "$2" ]]      # ! means NOT, -r means readable file, $1 is arrgument, $2 is 2nd arrgument
then
    echo "FILES ARE REAL"
    # exit $E_UNREADABLE
fi

# Here we learn File Text Operation
# 01- we check if file exsits or not !!!

var2=/Users/hazemelbaz/Documents/GitHub/BashTutorial/wood.txt 
if [[ -e $var2 ]] # -e means that .. checking if file exsit or not
then 
    echo "File is Exsit"
else
    echo "File Not Exsit"
fi

# -f returns true, if file is regular file, not directory or device file.
# -r returns true, if the file have permissions to readable, means user has permission to read a file.
# -x returns true, if the user has permissions to excute the file.
# -w returns true, if the user has permissions to write to file.