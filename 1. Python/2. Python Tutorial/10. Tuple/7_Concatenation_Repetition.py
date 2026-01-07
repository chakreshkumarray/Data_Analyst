tuple1 = (1, 2, 3)
tuple2 = (4,5)
result = tuple1 + tuple2
print(result)

tuple1 = ('a',)
result = tuple1 * 3
print(result)
print(result * 0)

tuple1 = (1, 2)
tuple2 = ()
print(tuple1 + tuple2)
print(tuple1 * -1)

colors = ('red','green','blue')
print("green" not in colors)

tuple_a = (1, 2, 3)
tuple_b = (1, 2, 3)
tuple_c = (1, 2, 4)

print(tuple_a == tuple_b)
print(tuple_a == tuple_c)
print(tuple_a < tuple_c)
