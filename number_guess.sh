#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( 1 + $RANDOM % 1000 ))

echo "Enter your username:"
read USERNAME


if [ "$($PSQL "SELECT EXISTS (SELECT 1 FROM users WHERE username = '$USERNAME')")" = "t" ]
then
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME_RESPONSE=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

while ! [[ "$GUESS" =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS
done

SCORE=0
while [ $GUESS !=  $SECRET_NUMBER ]
do
  if [ $GUESS -lt $SECRET_NUMBER ]
  then 
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi
  read GUESS
  ((SCORE=SCORE+1))
done 
((SCORE=SCORE+1))
echo "You guessed it in $SCORE tries. The secret number was $SECRET_NUMBER. Nice job!"

INSERT_GAME_RESPONSE=$($PSQL "INSERT INTO games (username, secret_number, score) VALUES ('$USERNAME', $SECRET_NUMBER, $SCORE)")