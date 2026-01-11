
# Program write a file in text

# Open a file in write mode
file = open("text.txt","w")

# Write some text into the file
file.write("I interested in Software Development \n")
file.write("Python is writing this line! \n")
file.write("File writing successful!")

# close the file
file.close()

# Show message
print("Data Written the file successfully")