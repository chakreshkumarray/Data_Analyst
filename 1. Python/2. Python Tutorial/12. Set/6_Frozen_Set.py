
regular = frozenset({1,2,3,3,4})
print(regular)
print(type(regular))

# Not allowed any method like add ,remove in frozen set
# use read only
# regular.add(5)
print(regular)

mutable_set = {1, 2, 3}
immutable_set = frozenset([1, 2, 3])

print(mutable_set == immutable_set)
print(mutable_set is immutable_set)

# print(hash(mutable_set)) error
print(hash(immutable_set))