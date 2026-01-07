# Traditional way to print square
res = {}
for i in range(6):
  res[i] = i ** 2
print(res)  

# # some condtion
res = {}
for i in range(1,11):
  if i % 2 == 0:
    res[i] = i ** 2
  else:
    res[i] = i ** 3  
print(res) 

res = {i: i**2 if i % 2 == 0 else i **3 for i in range(1,11)}
print(res)

students = [("Alice", 85),("Bob",90),("Charlie",78)]
res = {i : j for (i,j) in students}
print(res)

original = {'a':1, 'b':2, 'c': 3}
res = {j : i for i,j in original.items()}

# Table print
res = {}
for i in range(1,6):
  inner_dict = {}
  for j in range(1,11):
    inner_dict[j] = i * j
  res[i] = inner_dict   
for i in res:
  print(f"{i}: {res[i]}")    

# by dictionary comprenhension
res = { i : {j: i*j for j in range(1,11) } for i in range(1,6)}
print(res)