# UnPacking Tuple

a, b, c = 1, 2, 3
print(a,b,c) 

# Unpacking Operator(*)
a, *b, c = 1, 2, 3, 4, 5
print(a)
print(b)
print(c)

a, *b = [1, 2, 3]
print(a,b)

a, *b = "hello"
print(a, b)

data = ("John", 30, "Manager", 50000, "New York")
name, age, designation, salary, city  = data
print(data)
print(city)
print(name)

(a,b), (c,d), (e,f) = ((1, 2), (3, 4), (5, 6))
print(a)
print(b)
print(a,b)