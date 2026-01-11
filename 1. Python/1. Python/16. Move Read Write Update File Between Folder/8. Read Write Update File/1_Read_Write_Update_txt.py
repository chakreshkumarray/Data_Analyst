
import os

file_name = "notes.txt"

# Create file if it doesn't exist
if not os.path.exists(file_name):
  with open(file_name, "w") as f:
    f.write("I am Ck.\n Belong to UP Sultanpur.\n")
    print("🆕 File created and data written.")
else:
  print("📄 File already exists.")

# Read and display current content
print("\n--- Current File Content ---")
with open(file_name, "r") as f:
  print(f.read())

# Append new content
with open(file_name, "a") as f:
  f.write("\n I am interested in software developmwent...\n Also like java and Python development!\n")

# Read and display updated content
print("\n✅ File updated successfully!\n")
print("--- Updated File Content ---")
with open(file_name, "r") as f:
  print(f.read())
