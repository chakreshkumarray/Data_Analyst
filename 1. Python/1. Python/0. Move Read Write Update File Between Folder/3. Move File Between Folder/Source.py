
import os
import shutil

# ----- Define source and destination -----

source_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\1. Source File"
destination_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\2. Destination File"
file_name = "students_data.csv"   # CSV file to move


# ----- Build full paths -----

source_path = os.path.join(source_folder, file_name)
destination_path = os.path.join(destination_folder, file_name)


# ----- Check and create destination folder if not exists -----

if not os.path.exists(destination_folder):
  os.makedirs(destination_folder)


# ----- Move the CSV file -----

try:
  shutil.move(source_path, destination_path)   
  print(f"✅ '{file_name}' has been moved successfully to '{destination_folder}'.")
except FileNotFoundError:
  print("❌ The source CSV file was not found.")
except PermissionError:
  print("❌ Permission denied. Please close the file if it's open.")
except shutil.Error as e:
  print(f"⚠️ Error: {e}")
