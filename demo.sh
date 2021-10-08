#! /usr/bin/bash

# variable
echo "variable"
NAME="Sam"
echo "My name is $NAME"
# can also write like JS: echo "my name is ${NAME}"

# input
echo "------------------"
read -p "Please enter your age: " AGE
echo "Your age is $AGE"

# if else
# [] need space
echo "------------------"
echo "if else"
SCORE=12
if [ $SCORE == 12 ]
then
    echo $SCORE
else
    echo "kappa123"
fi

# for loop
echo "------------------"
echo "for loop"
PORTS="8080 3000 3306"
for PORT in $PORTS
    do
        echo $PORT
done

echo "------------------"
echo "use for loop to rename files"
FILES=$(ls *.txt)
for FILE in $FILES
    do
        mv $FILE new-$FILE
done

# while loop
echo "------------------"
echo "use while loop to read file"
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-1.txt"

# function with args
# $1, $2 mean first arg and second arg
echo "------------------"
echo "function with args"
function sayHello(){
    echo "Hi, we are $1 and $2"
}
sayHello "M" "B"


# write something into a file
echo "------------------"
echo "create a folder with a file, and write something into the file"
mkdir HelloGithub
touch HelloGithub/hello.txt
echo "hello GitHub!" >> HelloGithub/hello.txt
echo "created HelloGithub/hello.txt"