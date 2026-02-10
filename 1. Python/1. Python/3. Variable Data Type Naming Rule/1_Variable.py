# Creating variable in python
# name, value, memory location, data type
x = 1
print(x)
print(type(x))
# print(len(x))

name = "Chakresh" # String type
print(name)
print(type(name))
print(len(name))

price = 999.9 # float type
print(price)
print(type(price))

is_adult = False # boolean
print(is_adult)
print(type(is_adult))

a = 12
b = 13
c = 14
print(a,b,c)
print(a,b,c, sep=" ") # hidden working
print(a,b,c, sep=",")

d, e,f, g = 3, 2, 9.9, "Hello"
print(d, e, f, g, sep=",") 
print(d + e)