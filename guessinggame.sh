
function main {
  correct_guess=0
  actual_number_of_files=$(ls | wc -l)

  while [[ $correct_guess -lt 1 ]]
  do
    echo "How many files are in the current directory?"
    read guessed_number_of_files

    if guessIsCorrect $guessed_number_of_files $actual_number_of_files
    then
      correct_guess=1
      echo "Correct guess!"
    else
      failedGuessMessage $guessed_number_of_files $actual_number_of_files
    fi
  done
}

function failedGuessMessage {
  [[ $1 -gt $2 ]] && echo "Try a lower number" || echo "Try a higher number"
}

function guessIsCorrect {
  if [[ $1 -eq $2 ]]
  then
    return 0
  else
    return 1
  fi
}

main
