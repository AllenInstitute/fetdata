#!/usr/bin/env bash
# script to concatenate the resulting individual csvs from formatter into
# one large csv; should be run in the directory containing resultFrame*
touch "$2"
i=1
for f in $(ls "$1")
do
    if [[ $i == 1 ]]
    then
        cat "$1/$f" > "$2"
    else
        tail -n +2 "$1/$f" >> "$2"
    fi
    i=$(( i + 1 ))
done
