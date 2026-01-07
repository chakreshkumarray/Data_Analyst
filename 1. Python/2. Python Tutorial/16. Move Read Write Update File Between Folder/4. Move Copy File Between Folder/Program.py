
import os
import shutil

# Define paths
source_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\1. Source File"
destination_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\2. Destination File"
file_name = "move_copy_of_file.csv"

# Join the full path
source_path = os.path.join(source_folder, file_name)
destination_path = os.path.join(destination_folder, file_name)

# Send copy of file
if not os.path.isfile(source_path):
  print("❌ Source file not found!")
else:
  # Create destination folder if missing
  os.makedirs(destination_folder, exist_ok=True)

  if os.path.exists(destination_path):
    print("⚠️ File already exists in destination folder!")
  else:
    shutil.copy(source_path, destination_path)
    print(f"✅ '{file_name}' copied successfully to '{destination_folder}'.")
