#!/bin/bash

# Check if environment exists
if conda info --envs | grep -q "^stat230A-final-project"; then
    echo "Environment 'stat230A-final-project' already exists."
else
    echo "Creating conda environment 'stat230A-final-project'..."
    conda env create -f environment.yaml
fi

# Activate environment
echo "Activating environment..."
conda activate stat230A-final-project

# Run notebooks sequentially
echo "Executing notebooks..."

jupyter nbconvert --to notebook --execute --inplace Part1_Data_Engineering.ipynb
jupyter nbconvert --to notebook --execute --inplace Part2_EDA.ipynb

echo "All notebooks executed successfully."