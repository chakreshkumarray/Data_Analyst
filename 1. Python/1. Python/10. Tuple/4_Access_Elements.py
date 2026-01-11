fruits = ('apple','banana','cherry','date','elderberry','grapes')
print(fruits)

# Tuple Accessing
print(fruits[0])
print(fruits[2])

# Tuple Slicing
print(fruits[1:4])
print(fruits[::-1])

# Nested Tuple
nested_tuple = ((1,2),(3,4),(5,6))
print(nested_tuple[0][1])

# Mixed Tuple
t = (42, "hello", [1,2,3], {'key': 'value'})
print(t[0])
print(t[2][0])
print(t[3]['key'])
