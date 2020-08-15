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
#exit $E_BADARGS
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

# Here we learn create simple function

# Here we implement the function
someFunction()
{
    echo "Function Name is: $FUNCNAME"
}

someFunction           # Here we Call the function and use it

echo "Outside the function, \$FUNCNAME= $FUNCNAME"    # Here $FUNCNAME will returns NULL, because this variable is local in the function can not use outside function



# Hello Hassan This vedio to demonstrate how to commit your change over VSCode

# now i make save this comments change  by control S

# watch the blue mark with number 1 on left side 


# Here We learn about loops
#for x in {1..5}
for x in 1 2 3 4 5
do
    echo "outer loop $x ------------------------------------------"
    for y in 1 2 3 
    do 
        echo "Inner loop $y !!!!! Outer loop iteration $x"
    done
done


# Here we learn variables, make newline in code with \n 

declare -r PI=3.1415269           # Here we implement Uniqe variable, read only variable
printf "Fourth decimal of PI is %1.4f \n" $PI             # allow you to format the output on the screen, \n means make new line 

# Here we learn Regular Expression 
E_NOPATTERN=71
DICT=/Users/hazemelbaz/Documents/GitHub/BashTutorial/linux.words
if [ -z "$1" ]     # -z returns true if there is one parameter in found, returns false if no parameter exsits
then
    echo
    echo "Usage:"
    echo "'basename $0' \"pattern,\""
    echo "where \"pattern\" is in the form"
    echo "ooo..oo.o..."
    echo
    echo "The o's are letters you already know,"
    echo "and the periods are missing letters."
    echo "Letters and periods can be in any position."
    echo "For example: w..i....n"
    echo 
    #exit $E_NOPATTERN
fi

grep ^"$1"$ "$DICT"      # ^ means the begginig of the line, $ means the ends of the line


# Here we learn re-direction
file1=wood.txt
echo "This Line is Send to $file1" 1>$file1

# Here first we add 12345 to fd.txt 
# then we sgin 3 to fd.txt 
# then we read only 2 chart from a file 
# then we write . into file
# then we close the fd.txt file 
# filanlly we move the result of thers action into fd.txt file
echo 12345 > fd.txt
exec 3<>fd.txt
read -n 2 <&3
echo -n . >&3
exec 3>&-
cat fd.txt


# Here we learn more about functions
# learn how to declaration function

function_name ()
{
   echo " commands ......"
}

# function1_name() { #command1; command2; command3; }
# suppose here some written code ....

f1 () 
{
    echo "Herer Function 1 call Function 2"
    f2
}

f2 ()
{
    echo "Hi, i am function 2"
}

f1        # Here we call function 1


# Here learn nested functions 
f3 ()
{
    f4 ()
    {
        echo "This is nested function 4"
    }
}

f3
f4     # this function will  not run because it delared inside another one

# Here learn strange function
_()
{
    echo "Hey, i am strange function call: $FUNCNAME"
} 
_    # here we call the function _ 

# Here learn pass arguments 
func1 ()
{
    echo "First arg is $1, second arg is $2"
}

var3=10
var4=20
func1 $var3 var4

# Here learn more about ARRAY 
declare -a arr     # here -a means we declare an array
arr=( 10 20 30 40 50 )   # here we initialize array arr

echo -e "${arr[0]}\n${arr[2]}"

arr=( [0]=first [1]="second" [7]=45 )
echo -e "${arr[0]}\n${arr[1]}\n${arr[7]}"

A=something123
echo ${A[*]}
echo ${A[0]}
echo ${A[1]}
echo ${#A[@]}    # here it prints out count of elements at A


arr1=( zero one two)
echo ${arr1[0]}   # will prints out 1st element
echo ${#arr1[0]}  # will prints out length of 1st element
echo ${#arr1[*]}  # will prints out size of array arr1



# Here The Vedio review all the course fastly
