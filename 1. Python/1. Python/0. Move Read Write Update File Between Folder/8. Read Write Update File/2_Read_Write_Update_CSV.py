
import csv, os

file = "data.csv"

# Create file if not exists
if not os.path.exists(file):
  with open(file, "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["ID", "Name", "Age", "City", "Score"])
    w.writerows([
       [1, "Alice", 23, "Delhi", 85],
       [2, "Bob", 27, "Mumbai", 90],
       [3, "Charlie", 22, "Bangalore", 75],
       [4, "Diana", 25, "Pune", 88],
       [5, "Ethan", 29, "Chennai", 92]
       ])
    print("🆕 File created and data written.")
else:
  print("📄 File already exists.")

# Read file
print("\n--- Current CSV Content ---")
for row in csv.reader(open(file)):
  print(row)

# Append new data
with open(file, "a", newline="") as f:
  csv.writer(f).writerows([
    [6, "Farhan", 24, "Kolkata", 81],
    [7, "Grace", 26, "Hyderabad", 89]
    ])

# Read updated file
print("\n--- Updated CSV Content ---")
for row in csv.reader(open(file)):
  print(row)
