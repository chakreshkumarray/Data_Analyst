
import csv
import os

# Folder and file path
destination_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\2. Destination File"
destination_path = os.path.join(destination_folder, "Update_File_other_Folder.csv")

# Check if file exists before updating
if not os.path.exists(destination_path):
  print("❌ File not found! Please check the path.")
else:
  # Step 1: Read all rows
  rows = []
  with open(destination_path, "r") as file:
    reader = csv.reader(file)
    rows = list(reader)

  # Step 2: Modify data (example: update score where ID = 3)
  for row in rows:
    if row[0] == "3":  # ID column
      row[4] = "95"  # Update Score column

  # Step 3: Write updated data back to same file
  file = open(destination_path, "w", newline="")
  writer = csv.writer(file)
  writer.writerows(rows)
  file.close()

  print(f"✅ File updated successfully at:\n{destination_path}")
