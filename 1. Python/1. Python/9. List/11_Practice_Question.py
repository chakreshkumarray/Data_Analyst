# 1 Number Square

li = [1,2,3,4,5,6,7]
res = []
for i in li:
  res.append(i ** 2)
print(res)

res = [i ** 2 for i in li]
print(res)

res = [i ** 2 for i in range(1,11)]
print(res)

res = [i ** 2 for i in li]
print(res)

# 2 Even number
li = [1,2,3,4,5,6,7]
res = []
for i in range(1,11):
  if i % 2 == 0:
    res.append(i ** 2)
print(res)    

res = [i ** 2 for i in  range(1,11) if i % 2 == 0]
print(res)

res = [i ** 2 if i % 2 == 0 else i for i in range(1,11)]
print(res)

# 3 Combination
drinks = ['coffee','tea']
desserts = ['cake','cookie','ice cream']
res = []
for i in drinks:
  for j in desserts:
    res.append((i,j))
print(res)    

res = [(i,j) for i in drinks for j in desserts]
print(res)

# 4 Matrix Access
matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
res = []
for i in matrix:
  for j in i:
    res.append(j)
print(res)  

res = [j for i in matrix for j in i]
print(res)

# 5 Find Text
text = "Python list comprenhension is powerful and concepts"
res = []
for i in text.split():
  if len(i) > 5:
    res.append(i.upper())
print(res)

res = [i.upper() for i in text.split() if len(i) > 5]
print(res)