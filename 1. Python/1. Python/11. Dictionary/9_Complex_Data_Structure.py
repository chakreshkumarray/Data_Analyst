
# Nested Dictionary
Student = {
  "101":{
    "name":"Alice",
    "age":20,
    "grade":"A"
  },
  "101":{
    "name":"Alice",
    "age":20,
    "grade":"A"
  },
  "101":{
    "name":"Alice",
    "age":20,
    "grade":"A"
  }
}

profile = {
  "username":"Jode",
  "details":{
    "name": "Johan Doe",
    "email": "john@example.com",
    "age":30
  }
}

# Access
print(Student)
print(Student["101"])
print(Student["101"]['name'])

for i in Student:
  print(i,Student[i])

for i in Student:
  print(i)

for i in Student:
  for j in i:
    print(j)  

for roll_no,details in Student.items():
  for k,v in details.items():
    print(k,v)

