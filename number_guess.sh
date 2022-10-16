#!/bin/bash
NO_GUESS=$(( RANDOM%1000 +1 ))
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME
echo "$($PSQL "SELECT name,COUNT(name),MIN(no_guess) FROM games_info WHERE name='$USERNAME' GROUP BY name")" | while IFS="|" read NAME NO_GAMES BEST_SCORE
do
  if [[ -z $NAME ]];then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    echo "Welcome back, $NAME! You have played $NO_GAMES games, and your best game took $BEST_SCORE guesses."
  fi
done
echo "Guess the secret number between 1 and 1000:"
read GUESS_NUM