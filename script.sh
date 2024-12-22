#!/bin/bash

find_second_largest() {
    local max1=-999999
    local max2=-999999
    local num

    for num in "$@"; do
        if (( num > max1 )); then
            max2=$max1
            max1=$num
        elif (( num > max2 && num != max1 )); then
            max2=$num
        fi
    done

    if (( max2 == -999999 )); then
        echo "No second largest number found."
    else
        echo "Second largest number is: $max2"
    fi
}

# Example usage:
numbers=(10 20 30 40 50)
find_second_largest "${numbers[@]}"