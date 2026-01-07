# create list
my_list = [1,2,3,4,5]

# mixed list
mixed_list = [1,"hello",3.14,True]

# nested list
nested_list = [[1,2],[3,4]]

# Empty List
empty = []

# list of Strings
colors = ["red","green","blue"]

# List of booleans
flags = [True,False,True]

# List of mixed type
info = ["Alice",30,5.5,False]

# List inside a list (nested)
matrix = [[1,2,3],[4,5,6],[7,8,9]]

li = list()

# check the type
print(type(info))
print(type(li))

# Creating list by using list function
li = list("Hello")
print(li)

s = {10,20,30}
lst = list(s)
print(lst)

# 0 to 10 number in list
print(list(range(10)))

# copy list
original_list = [4,2,5,4,4,6]
copied_list = list(original_list)
print(copied_list)