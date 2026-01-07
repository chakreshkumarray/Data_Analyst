
# Open the existing text file in append mode
file = open("Update_File_Same_Folder.txt", "a", encoding="utf-8")

# Add new lines (update the file)
file.write("\nI like watch the movie\n")
file.write("I want go on another place\n")

# Close the file
file.close()

print("✅ File updated successfully! (New lines added)")
