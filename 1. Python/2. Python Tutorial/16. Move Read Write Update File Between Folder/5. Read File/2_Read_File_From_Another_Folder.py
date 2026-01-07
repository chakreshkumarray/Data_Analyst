
import os

def read_file():
  try:
    source_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\1. Source File"
    file_name = "read_file_from_another_folder.csv"

    file_path = os.path.join(source_folder, file_name)

    if not os.path.exists(file_path):
      print("❌ File not found!")
      return

    with open(file_path, "r", encoding="utf-8") as file:
      print("✅ File content:\n")
      print(file.read())

  except Exception as e:
    print("⚠️ Error:", e)


if __name__ == "__main__":
  read_file()
