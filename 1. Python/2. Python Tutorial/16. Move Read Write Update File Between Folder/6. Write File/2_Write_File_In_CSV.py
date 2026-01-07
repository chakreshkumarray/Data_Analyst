
# Program write file in csv
import csv

file = open("data.csv", "w", newline = "")

# create a csv writer object
writer = csv.writer(file)

# Write the header (5 columns)
writer.writerow(["ID","Name","Age","City","Score"])

# Write 5 rows of raw data
writer.writerow([1, "Alice", 23, "Delhi", 85])
writer.writerow([2, "Bob", 27, "Mumbai", 90])
writer.writerow([3, "Charlie", 22, "Bangalore", 75])
writer.writerow([4, "Diana", 25, "Pune", 88])
writer.writerow([5, "Ethan", 29, "Chennai", 92])

# Close the file
file.close()

# Show the message
print("CSV file 'data.csv' created successfully !")
