#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# If no argument is provided
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

# Check if input is a number (atomic_number) or a string (symbol/name)
if [[ $1 =~ ^[0-9]+$ ]]; then
  QUERY="SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius 
         FROM elements 
         INNER JOIN properties USING(atomic_number) 
         INNER JOIN types USING(type_id) 
         WHERE atomic_number = $1"
else
  QUERY="SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius 
         FROM elements 
         INNER JOIN properties USING(atomic_number) 
         INNER JOIN types USING(type_id) 
         WHERE symbol = INITCAP('$1') OR name = INITCAP('$1')"
fi

# Fetch the result
RESULT=$($PSQL "$QUERY")

# If no result is found
if [[ -z $RESULT ]]; then
  echo "I could not find that element in the database."
  exit 0
fi

# Parse the result
IFS='|' read -r ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELT BOIL <<< "$RESULT"

# Output the formatted information
echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELT celsius and a boiling point of $BOIL celsius."
