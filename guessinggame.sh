function main {
  correct_guess=0
  
  number_of_files=$(ls | wc -l)
  while [[ $correct_guess -lt 1 ]]
  do
    echo "How many files are in the current directory?"
    read guess

    if [[ $guess -eq $number_of_files ]]
    then
      correct_guess=1
      echo "Correct"
    else
      [[ $guess -gt $number_of_files ]] && echo "Try a lower number" || echo "Try a higher number"
    fi
  done
}

main
