#!/usr/bin/env python3
import sys

# Check if required positional arguments exist
if len(sys.argv) < 3:
    print("Error: Missing arguments.")
    print("Usage: python3 process_data.py <username> <topic>")
    sys.exit(1)

user_name = sys.argv[1]
topic = sys.argv[2]

print("=== Python Processing Engine ===")
print(f"User: {user_name}")
print(f"Target topic: {topic.upper()}")
print("Status: Processing completed successfully.")
