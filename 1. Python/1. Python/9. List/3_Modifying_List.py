fruits = ["Apple","Banana","Cherry"]
print(fruits)

# Append
fruits.append("Mango")
print(fruits)

# insert
fruits.insert(1,"Papaya")
print(fruits)

# extend
fruits1 = ["Grapes","PineApple"]
fruits.extend(fruits1)
print(fruits)

# remove
fruits.remove("Banana")
print(fruits)

# Pop
fruits.pop()
print(fruits)
fruits.pop(2)
print(fruits)

# delete new method
del fruits[1]
print(fruits)

del fruits[1:3]
print(fruits)

# Clear
fruits.clear()
print(fruits)