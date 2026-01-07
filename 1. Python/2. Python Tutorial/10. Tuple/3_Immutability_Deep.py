t = (1, 2, 3)
t[0] = 11   # Raises TypeError
t.append(4) # Raises AttributeError
t.remove(1) # Raises AttributeError

del t[1]      # Raises TypeError
del t         # Raises TypeError
print(t)

t = (1, [2, 3])
t[1].append(4)
print(t)

original_tuple = (1, 2, 3)
original_tuple = original_tuple + (4, 5) # concat
print(original_tuple)
