#!/bin/bash

# 1. Basic if
number=7
if [ $number -gt 5 ]; then
    echo "$number is greater than 5"
fi

# 2. if-else
user="admin"
if [ "$user" = "admin" ]; then
    echo "Welcome, admin!"
else
    echo "Access denied for user: $user"
fi

# 3. if-elif-else (age example)
age=17
if [ $age -lt 13 ]; then
    echo "You are a child."
elif [ $age -lt 18 ]; then
    echo "You are a teenager."
else
    echo "You are an adult."
fi

# 4. String comparison using [[ ]]
city="Mumbai"
if [[ "$city" == "Mumbai" ]]; then
    echo "You're in Mumbai."
else
    echo "You're not in Mumbai."
fi

# 5. File existence check
file="example.txt"
touch "$file"  # create the file for demonstration
if [ -f "$file" ]; then
    echo "File '$file' exists."
else
    echo "File '$file' does not exist."
fi

# 6. Directory existence check
directory="my_folder"
mkdir -p "$directory"  # create directory
if [ -d "$directory" ]; then
    echo "Directory '$directory' exists."
else
    echo "Directory '$directory' does not exist."
fi

# 7. Checking array length
MOVIES=("Court" "eega" "PUSHPA2")
if [ ${#MOVIES[@]} -gt 0 ]; then
    echo "There are ${#MOVIES[@]} movies in the list."
else
    echo "Movie list is empty."
fi

# 8. User input and condition
read -p "Enter your lucky number: " lucky
if [ "$lucky" -eq 7 ]; then
    echo "That's lucky indeed!"
else
    echo "That's nice too!"
fi