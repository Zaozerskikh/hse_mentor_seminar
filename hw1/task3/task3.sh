#!/bin/bash

# Управляющие конструкции (условия и циклы)
# Задание: Напишите скрипт, который запрашивает у пользователя ввод числа и затем:
# Использует if, чтобы проверить, является ли число положительным, отрицательным или нулем, и выводит соответствующее сообщение.
# Использует while для подсчёта от 1 до введенного числа (если оно положительное).

read -p "Enter a number: " number


if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: '$number' is not a number."
    exit 1
fi

if (( number > 0 )); then
    echo "The number is positive."
elif (( number < 0 )); then
    echo "The number is negative."
else
    echo "The number is 0."
fi


if (( number > 0 )); then
    count=1
    sum=0
    while (( count <= number )); do
        echo "$count"
        sum=$((sum + count))
        ((count++))
    done

    echo "Final count: $((count - 1))"
    echo "Sum from 1 to number: $sum"
fi
