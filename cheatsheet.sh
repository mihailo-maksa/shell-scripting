#! /bin/bash   
# you must include a "shebang" at the top of .sh file
# it includes "#!" followed by your shell location
# you can get your shell location by running which bash

# 1.) ECHO COMMAND
# echo Hello World!


# 2.) VARIABLE
# Uppercase by convention
# Letters, numbers, underscores
# NAME="Brad"
# echo "My name is $NAME"
# echo "My name is ${NAME}"


# 3.) USER INPUT
# read -p "Enter your name: " NAME
# echo "Hello $NAME, nice to meet you!"


# 4.) SIMPLE IF STATMENT
# if [ "$NAME" == "Brad" ] 
# then 
#   echo "Your name is Brad"
# fi


# 5.) IF-ELSE
# if [ "$NAME" == "Brad" ]
# then 
#   echo "Your name is Brad"
# else 
#   echo "Your name is not Brad"
# fi


# 6.) ELSE-IF (elif)
# if [ "$NAME" == "Brad" ]
# then 
#   echo "Your name is Brad"
# elif [ "$NAME" == "Jack" ]
# then
#   echo "Your name is Jack"
# else 
#   echo "Your name is NOT Brad or Jack"
# fi


# 7.) COMPARISON
# NUM1=31
# NUM2=5

# if [ "$NUM1" -gt "$NUM2" ]
# then
#   echo "$NUM1 is greater than $NUM2"
# else 
#   echo "$NUM1 is less than $NUM2"
# fi

########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########


# 8.) FILE CONDITIONS
# FILE="test.txt"

# if [ -e "$FILE" ]
# then 
#   echo "$FILE is a file"
# else 
#   echo "$FILE is NOT a file"
# fi

########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########


# 9.) CASE STATEMENT
# read -p "Are you 21 or over? " ANSWER

# case "$ANSWER" in 
#   [yY] | [yY][eE][sS])
#     echo "You can have a beer :)"
#     ;;
#   [nN] | [nN][oO])
#     echo "Sorry, no beer for you :("
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
# esac


# 10.) SIMPLE FOR LOOP
# NAMES="Brad Kevin Alice Mark"  # a regular array

# for NAME in $NAMES
#   do 
#     echo "Hello $NAME!"
# done


# 11.) FOR LOOP TO RENAME FILES
# FILES=$(ls *.txt)  # an array of files
# NEWEST="newest"

# for FILE in $FILES 
#   do 
#     echo "Renaming $FILE to newest-$FILE"
#     mv $FILE $NEWEST-$FILE
# done


# 12.) WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# LINE=1

# while read -r  CURRENT_LINE
#   do 
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done < "./newest-new-1.txt"


# 13.) FUNCTION

# function sayHello() {
#   echo "Hello, World!"
# }

# sayHello


# 14.) FUNCTION WITH PARAMS

# function greet() {
#   echo "Hi, I am $1 and I am $2!"  # so-called positional parameters
# }

# greet "Brad" "25"


# 15.) CREATE FOLDER AND WRITE TO A FILE

# mkdir hello/stocks
# touch "stocks/my_stocks.txt"
# echo "TSLA, PLTR, LMND, SQ, NVTA" >> "stocks/my_stocks.txt"
# echo "Listed all the stocks!"
