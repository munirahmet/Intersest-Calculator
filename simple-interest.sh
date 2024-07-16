#!/bin/bash

# Simple interest calculation
# Usage: ./simple-interest.sh <principal> <rate of interest> <time period>

# Check the correctness of the parameters
if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate of interest> <time period>"
  exit 1
fi

# Assign parameters to variables
principal=$1
interest_rate=$2
time_period=$3

# Calculate simple interest
interest=$(echo "$principal * $interest_rate * $time_period / 100" | bc -l)

# Print the result
echo "Principal: $principal"
echo "Rate of Interest: $interest_rate"
echo "Time Period: $time_period"
echo "Simple Interest: $interest"
