# Matrix index start from 0
# 00,01,02
# 10,11,12
# 20,21,22

matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
matrix[0][0] = 11
print(matrix[0][0])
print(matrix)

#Iterate matrix by element
for row in matrix:
  # row = [1,2,3]
  for x in row:
    print(x, end = ' ')
  print()  

#Iterate matrix by index
for i in range(len(matrix)):
  for j in range(len(matrix[i])):
    print(matrix[i][j], end = " ")
  print()  

#
cube = [
  [[1,2],[3,4]],
  [[5,6],[7,8]]
]


print(cube[1][1][0]) # 7

nested = [[0] * 3] * 3
nested[0][0] = 1
print(nested)

good = []
li = [0,0,0]
for _ in range(3):
  good.append(li[:]) #[0,0,0]
good[0][0] = 1
print(good)