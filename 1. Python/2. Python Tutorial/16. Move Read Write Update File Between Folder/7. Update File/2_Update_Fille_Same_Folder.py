
import csv

# Open the existing CSV file in append mode
file = open("Update_File_Same_Folder.csv", "a", newline="")

# Create a CSV writer object
writer = csv.writer(file)

# Add new rows (update the file)
writer.writerow([6, "Farhan", 24, "Kolkata", 81])
writer.writerow([7, "Grace", 26, "Hyderabad", 89])

# Close the file
file.close()

print("✅ File updated successfully! (New rows added)")
