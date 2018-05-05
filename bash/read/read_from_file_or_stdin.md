# Read line by line from file ( if passed as argument) or from STDIN

    while read line
    do
        echo  this is line: "$line"
    done < "${1:-/dev/stdin}"
