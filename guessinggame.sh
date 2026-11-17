#!/usr/bin/env bash
# File: guessinggame.sh

get_file_count() {
    local count=$(ls -1 | wc -l)
    echo "$count"
}

run_guessing_game() {
    local target=$(get_file_count)
    local guess=-1

    echo "============================================="
    echo "Welcome to the File Count Guessing Game!"
    echo "============================================="
    echo "Can you guess how many files are in this directory?"

    while [[ $guess -ne $target ]]; do
        read -p "Enter your guess: " guess
        
        if [[ $guess -eq $target ]]; then
            echo " Congratulations! You guessed the correct number ($target)."
            break
        elif [[ $guess -gt $target ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Your guess is too low. Try again!"
        fi
    done
}

run_guessing_game