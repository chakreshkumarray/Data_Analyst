fruits = ('apple','banana','orange')
for x in fruits:
  print(x)

colors = ('red','green','blue')
print(enumerate(colors))

for t in enumerate(colors):
  print(t)
  
for t in enumerate(colors):
  print(t, type(t))

for index, color in enumerate(colors):
  print(index,color)

for index, color in enumerate(colors, start = 11):
  print(index,color)   

pairs = [(1,'a'),(2,'b'),(3,'c')]
for number, letter in pairs:
  print(number,letter)