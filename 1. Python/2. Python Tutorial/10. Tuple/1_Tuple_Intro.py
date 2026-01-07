my_tuple = (1, 2, 3)
another_tuple = 1, 2, 3
a = (1,) # tuple
print(type(a))
b = (1) # not a tuple
print(type(b))

tuple_from_string = tuple("abc")
print(tuple_from_string)
print(type(tuple_from_string))

tuple_from_list = tuple[(1, 2, 3)]
print(tuple_from_list)

t = tuple([5])
print(t)
print(type(t))

empty = ()
print(type(empty))

empty_tuple = tuple()
print(type(empty_tuple))

