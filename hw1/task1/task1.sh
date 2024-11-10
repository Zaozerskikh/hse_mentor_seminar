#!/bin/bash

# Функционал Bash
# Задание: Напишите Bash-скрипт, который выполняет следующие действия:
#1.	Создаёт список всех файлов в текущей директории, указывая их тип (файл, каталог и т.д.).
#2.	Проверяет наличие определённого файла, переданного как аргумент скрипта, и выводит сообщение о его наличии или отсутствии.
#3.	Использует цикл for для вывода информации о каждом файле: его имя и права доступа.


# 1.
echo "All elements in current directory:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - File"
    elif [ -d "$item" ]; then
        echo "$item - Directory"
    else
        echo "$item - Other"
    fi
done
echo ""


# 2.
if [ -z "$1" ]; then
    echo "No args provided."
else
    if [ -e "$1" ]; then
        if [ -f "$1" ]; then
            echo "'$1' exists - File."
        elif [ -d "$1" ]; then
            echo "'$1' exists - Directory."
        else
            echo "'$1' exists - unknown type."
        fi
    else
        echo "Element '$1' does not exist."
    fi
fi
echo ""


# 3.
echo "File names and their permissions:"
for item in *; do
    if [ -f "$item" ] || [ -d "$item" ]; then
        echo "$(ls -ld "$item" | awk '{print $1, $9}')"
    fi
done
