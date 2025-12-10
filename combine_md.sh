#!/bin/bash

output_file="документация_полная.txt"

# Устанавливаем tree если нет
# sudo apt-get install tree  # для Ubuntu/Debian

# 1. Структура с tree (если установлен)
echo "=== ПОЛНАЯ СТРУКТУРА ПАПКИ ===" > "$output_file"
tree . >> "$output_file" 2>/dev/null || find . -type f | sort >> "$output_file"

echo "" >> "$output_file"
echo "=== MARKDOWN ФАЙЛЫ ===" >> "$output_file"
find . -type f -name "*.md" | sort >> "$output_file"

echo "" >> "$output_file"
echo "=== СОДЕРЖАНИЕ ФАЙЛОВ ===" >> "$output_file"

# 2. Содержимое файлов
find . -type f -name "*.md" | sort | while read file; do
    echo "========================================" >> "$output_file"
    echo "ФАЙЛ: $file" >> "$output_file"
    echo "========================================" >> "$output_file"
    echo "" >> "$output_file"
    cat "$file" >> "$output_file"
    echo "" >> "$output_file"
    echo "" >> "$output_file"
done