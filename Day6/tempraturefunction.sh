#!/bin/bash

# Define function to convert degrees Celsius to degrees Fahrenheit
function celsius_to_fahrenheit 
{
    # Multiply degrees Celsius by 9/5 and add 32
    degF=$(echo "scale=2; $1 * 9/5 + 32" | bc)
    echo "$1°C = $degF°F"
}

# Define function to convert degrees Fahrenheit to degrees Celsius
function fahrenheit_to_celsius 
{
    # Subtract 32 from degrees Fahrenheit and multiply by 5/9
    degC=$(echo "scale=2; ($1 - 32) * 5/9" | bc)
    echo "$1°F = $degC°C"
}

# Prompt user for input
read -p "Enter a temperature: " temp

# Check if input is within the freezing and boiling points of water
if (( $(echo "$temp >= 0 && $temp <= 100" | bc -l) )); then
    # Prompt user for conversion selection
    read -p "Convert to (F)ahrenheit or (C)elsius? " 

    # Use case statement to call appropriate function
    case "$selection" in
        [Ff]*)
            celsius_to_fahrenheit $temp
            ;;
        [Cc]*)
            echo "$temp°C = $temp°F"
            fahrenheit_to_celsius $temp
            ;;
        *)
		  echo "Invalid selection."
            ;;
    esac
else
    echo "Input temperature must be between 0°C/32°F and 100°C/212°F."
fi
