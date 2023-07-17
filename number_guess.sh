#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( 1 + $RANDOM % 1000 ))

echo "Enter your username:"
read USERNAME


if [ "$($PSQL "SELECT EXISTS (SELECT 1 FROM users WHERE username = '$USERNAME')")" = "t" ]
then
  GAMES_PLAYED=$($PQSL "SELECT COUNT game_id FROM games WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(score) FROM games WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi