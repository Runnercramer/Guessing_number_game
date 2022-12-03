#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:"
read USER_NAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME'")

if [[ -z $USER_ID ]]
then

  echo -e "\nWelcome, $USER_NAME! It looks like this is your first time here."
  INSERT_NEW_USER=$($PSQL "INSERT INTO users (name) VALUES ('$USER_NAME')")

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USER_NAME'")
  
else

  USER_INFO=$($PSQL "SELECT COUNT(*), MIN(tries) FROM games WHERE user_id = $USER_ID")
  echo "$USER_INFO" | while IFS="|" read GAMES BEST_GAME
  do
     echo -e "\nWelcome back, $USER_NAME! You have played $GAMES games, and your best game took $BEST_GAME guesses."
  done
fi

ANSWER=$(( RANDOM % 1001))

echo -e "\nGuess the secret number between 1 and 1000:"
read USER_NUMBER

TRIES=1

while [[ $USER_NUMBER != $ANSWER ]]
do
  if  [[ ! $USER_NUMBER =~ ^[0-9]+$ ]]
  then

    echo -e "\nThat is not an integer, guess again:"
    read USER_NUMBER

    else

    if [[ $USER_NUMBER > $ANSWER ]]
    then

      echo -e "\nIt's lower than that, guess again:"
      read USER_NUMBER
      TRIES=$(( $TRIES + 1 ))

    else
      echo -e "\nIt's higher than that, guess again:"
      read USER_NUMBER
      TRIES=$(( $TRIES + 1 ))
    fi
  fi
done

echo -e "\nYou guessed it in $TRIES tries. The secret number was $ANSWER. Nice job!"

INSERT_USER_INFO=$($PSQL "INSERT INTO games(user_id, tries) VALUES($USER_ID, $TRIES)")
