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
COUNT=1
while [[ $NO_GUESS -ne $GUESS_NUM ]]
do
  (( COUNT++ ))
  if ! [[ $GUESS_NUM =~ ^[0-9]+$ ]];then
    echo "That is not an integer, guess again:"
    read GUESS_NUM
  elif [[ $GUESS_NUM > $NO_GUESS ]];then
    echo "It's lower than that, guess again:"
    read GUESS_NUM
  elif [[ $GUESS_NUM < $NO_GUESS ]];then
    echo "It's higher than that, guess again:"
    read GUESS_NUM 
  fi
done
echo "You guessed it in $COUNT tries. The secret number was $NO_GUESS. Nice job!"

INSERT_VALUE=$($PSQL "INSERT INTO games_info(name,no_guess) VALUES('$USERNAME',$COUNT)")