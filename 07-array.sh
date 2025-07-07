#!/bin/bash

# Declare an indexed array
MOVIES=("Court" "eega" "PUSHPA2" "Thandel")

# Accessing individual elements
echo "First Movie: ${MOVIES[0]}"
echo "Second Movie: ${MOVIES[1]}"
echo "Fourth Movie: ${MOVIES[3]}"
echo "Non-existing Movie (index 4): ${MOVIES[4]}"  # This will be empty # index start from 0

# Display all movies using [@] and [*]
echo "All movies using \${MOVIES[@]}: ${MOVIES[@]}"
echo "All movies using \${MOVIES[*]}: ${MOVIES[*]}"

# Length of the array
echo "Total number of movies: ${#MOVIES[@]}"

# Add a new movie to the array
MOVIES+=("kubera")
echo "After adding 'kubera': ${MOVIES[@]}"

# Loop through array elements
echo "Looping through all movies:"
for movie in "${MOVIES[@]}"; do
    echo "- $movie"
done

# Remove an element by index
unset MOVIES[1]  # Removes "eega"
echo "After removing index 1 (eega): ${MOVIES[@]}"

# Show sliced/sub-array: from index 1, get 2 elements
echo "Sliced movies [1:2]: ${MOVIES[@]:1:2}"

# Show all indices and their values
echo "All elements with their indices:"
for index in "${!MOVIES[@]}"; do
    echo "Index $index: ${MOVIES[$index]}"
done

# Create array from command output (example: create list of .sh files)
SCRIPT_FILES=( $(ls *.sh 2>/dev/null) )
echo "Shell script files in current directory: ${SCRIPT_FILES[@]}"

# Use mapfile for safer read with spaces
mapfile -t MOVIES_SAFE < <(printf "%s\n" "${MOVIES[@]}")
echo "Movies copied safely using mapfile:"
for m in "${MOVIES_SAFE[@]}"; do
    echo "* $m"
done

# Associative array example (requires Bash 4+)
declare -A MOVIE_DIRECTORS
MOVIE_DIRECTORS["Court"]="Chaitanya Tamhane"
MOVIE_DIRECTORS["eega"]="S. S. Rajamouli"
MOVIE_DIRECTORS["PUSHPA2"]="Sukumar"
MOVIE_DIRECTORS["Thandel"]="Chandoo Mondeti"

echo "Director of Court: ${MOVIE_DIRECTORS["Court"]}"
echo "All movie directors:"
for title in "${!MOVIE_DIRECTORS[@]}"; do
    echo "$title -> ${MOVIE_DIRECTORS[$title]}"
done
