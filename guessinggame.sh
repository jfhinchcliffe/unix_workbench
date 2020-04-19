function main {
  echo "How many files are in the current directory?"
  read guess

  echo $guess

  number_of_files=$(ls | wc -l)
  echo "Answer $answer"
  if [[ $guess -eq $number_of_files ]]
  then
    echo "Correct"
  else
    echo "Wrong"
  fi
}

main
