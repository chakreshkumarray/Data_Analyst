# concat list
a = [1,2,3]
b = [4,5]
result = a+b
print(result)

# conact list with number list
a = [1,2,3]
b = [4,5]
result = a+b+[6]
print(result)

# list method
a = [0,1]
print(a*2)
print(a*3)

# list method
a = [0]*5
print(a)

# Check list exist or not
fruits = ["Apple","Banana","Cherry"]
print(fruits)
print("kiwi" in fruits)
print("kiwi" not in fruits)
print("he" in "hello")

# nested list
nested = [[0]*3]*3
nested[0][0] = 1
print(nested)

# find length
print(len([1,2,3,[4,5]]))