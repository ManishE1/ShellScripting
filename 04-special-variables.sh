#!/bin/bash

read -p 'Enter something :' something

echo -e "The entered value is $something"



echo "Script Name = $0"
echo "First Argument = $1"
echo "Second Argument = $2 "
echo "All Arguments = $*"
echo "All Arguments = $@"
echo "Number of Arguments = $#"
