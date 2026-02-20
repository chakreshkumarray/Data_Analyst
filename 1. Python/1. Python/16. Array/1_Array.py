
# Array store similar type of data in single container.
# container is like a variable

arr = [55,19,79,57,62,23]
print(arr)

# Access specific element
print(arr[0])   # First element
print(arr[2])   # Third element

# Using For loop
for i in arr:
  print(i)

# Add Elements
arr.append(50)     # Add at end
arr.insert(1, 15)  # Insert at index 1

# Remove Elements
arr.remove(20)   # Remove value
arr.pop()        # Remove last element
