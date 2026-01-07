a = [1,2,3]
b = a[:]   # creates a shallow copy
b.append(4)
print(a)
print(b)
b.append(5)
a.append(5)
print(a)
print(b)

# deep copy
a = [[1,2],[3,4]]
b = a[:]
b[0][0] = 99
print(a)
print(b)
print(id(a[0]),id(b[0]))

# import deep copy
import copy
b = copy.deepcopy(a)
print(id(a[0]),id(b[0]))