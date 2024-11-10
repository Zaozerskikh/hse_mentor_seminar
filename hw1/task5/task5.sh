#!/bin/bash -i

# Управление процессами и фоновое выполнение
# Задание: Напишите скрипт, который запускает три команды sleep с разными временами в фоновом режиме.
# Используйте команды jobs, fg, bg, чтобы продемонстрировать управление этими задачами.
# Опишите, что вы наблюдали.

sleep 5 &
sleep 10 &
sleep 15 &

echo "Listing all jobs:"
jobs
echo ""


echo "Bringing the second job to the foreground (sleep 10):"
fg %2
echo ""


echo "Listing jobs again after bringing the second job to the foreground:"
jobs
echo ""


echo "Putting the third job back into the background (sleep 15):"
bg %3
echo ""


echo "Final check of job statuses:"
jobs
