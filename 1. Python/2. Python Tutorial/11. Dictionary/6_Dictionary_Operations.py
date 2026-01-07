
student = {
  'name': "Jack",
  'age': 22,
  'grade': "B"
}

print(student)
print('name' in student)
print('name' not in student)
print(len(student))

# print all key
for i in student:
  print(i)

# print all key with value
for i in student:
  print(i,student[i])

# Error
data = {
  'a':1,
  'b':2
}
print(1 in data) # error

# Nested Dictionary
data = {
  'id':101,
  'info':{
    'name':"Bob",
    'city':"New York"
  }
}
print(data)
print(data['info'])
print(data['info']['city'])
print(len(data))