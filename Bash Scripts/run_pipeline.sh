#!/bin/bash

# AI Tool Used: Claude / ChatGPT
# Purpose: Added file existence check and input validation logic.
# Documentation: Recorded in ai-collaboration-log.md

PYTHON_SCRIPT="process_data.py"
LOG_FILE="execution.log"

echo "=== System Automation Pipeline ==="

# Check if the Python script exists before executing
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo "Error: Required file $PYTHON_SCRIPT does not exist."
    exit 1
fi

# Use system variable if parameter is omitted
USER_NAME="${1:-$USER}"

# Prompt for user input
read -p "Enter topic name (e.g. audio, visual, systems): " TOPIC_INPUT

if [ -z "$TOPIC_INPUT" ]; then
    echo "Error: Topic cannot be blank."
    exit 1
fi

echo "Passing parameters to Python: $USER_NAME -> $TOPIC_INPUT"
echo "----------------------------------------"

# Execute Python script with parameters and capture output
PYTHON_OUTPUT=$(python3 "$PYTHON_SCRIPT" "$USER_NAME" "$TOPIC_INPUT")
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    echo "$PYTHON_OUTPUT"
    
    # Write record to log file
    TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
    echo "[$TIMESTAMP] Executed for $USER_NAME - Topic: $TOPIC_INPUT" >> "$LOG_FILE"
    echo "Execution logged to $LOG_FILE"
else
    echo "Error: Python execution failed with code $EXIT_CODE"
fi

