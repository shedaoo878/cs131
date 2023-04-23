#!/bin/bash


input_file=$1
sep=$(head -n 1 "$input_file" | tr -d -c ';,' | head -c 1)

if [ "$sep" != "," ]; then
    sed -i "s/$sep/,/g" "$input_file"
fi

total_lines=$(wc -l < "$input_file")
total_entries=$((total_lines - 1))

train_size=$((total_entries * 80 / 100))
test_size=$((total_entries - train_size))

head -n 1 "$input_file" > train/data.csv
head -n 1 "$input_file" > test/data.csv

# spliting the dataset
awk -v train_size="$train_size" -v test_size="$test_size" 'NR > 1 {
    if (FNR <= train_size + 1) {
        print >> "train/data.csv"
    } else {
        print >> "test/data.csv"
    }
}' "$input_file"

