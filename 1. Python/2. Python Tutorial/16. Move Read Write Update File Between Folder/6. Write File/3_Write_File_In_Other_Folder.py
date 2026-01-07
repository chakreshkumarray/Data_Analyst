
# Program write file in other folder
import os
import csv

# Perfect destination folder path
destination_folder = r"E:\Python-Development\1. Python\2. Project\1. Move Read Write Update File Between Folder\2. Destination File"

# Create the folder if it doesn't exist
if not os.path.exists(destination_folder):
  os.makedirs(destination_folder)

# Full path to the CSV file
destination_path = os.path.join(destination_folder,"write_file_in_other_folder.csv")

# Open the file in write mode
file = open(destination_path, "w", newline = "")

# Create a CSV writer object
writer = csv.writer(file)

# Write the header (5 columns)
writer.writerow(["ID", "Name", "Age", "City", "Score"])

# Write 5 rows of data
writer.writerow([1, "Alice", 23, "Delhi", 85])
writer.writerow([2, "Bob", 27, "Mumbai", 90])
writer.writerow([3, "Charlie", 22, "Bangalore", 75])
writer.writerow([4, "Diana", 25, "Pune", 88])
writer.writerow([5, "Ethan", 29, "Chennai", 92])

# Close the file
file.close()

# Show message
print(f"✅ CSV file successfully created at:\n{destination_path}")
