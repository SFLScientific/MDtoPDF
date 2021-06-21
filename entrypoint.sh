#!/bin/sh

# Make sure globstar is enabled
shopt -s globstar
# for every md file in the whole repo
for i in **/*.md; do # Whitespace-safe and recursive
    # if readme is in the filename, then do processing
    # to add different file names, use "readme|file_name" in the grep
    echo "$i" | grep -i "readme" > /dev/null
    retval="$?"
    if [ $retval -eq 0 ]
    then
        # do the processing
        
        # same path to .md file, but replace .md with .pdf for output name
        pdf_name_path=$(echo "$i" | sed "s/.md/.pdf/")
        # call pandoc
        pandoc "$i" -o "$pdf_name_path"

    fi
    
done