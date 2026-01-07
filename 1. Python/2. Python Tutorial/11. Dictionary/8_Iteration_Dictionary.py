
Student = {
  'Name': 'Chakresh',
  'Class': '8 Sem',
  'Mobile No': 8114278548,
  'Age':23,
  'Cgpa':7.14,
  'DOB': '01.01.2003'
  }

print(Student)

for i in Student:
  print(i)

for i in Student.keys():
  print(i)

for i in Student.values():
  print(i)  

for i in Student.items():
  print(i) 

for key , value in Student.items():
  print(f"{key}:{value}")

data = {'a':1, 'b':2, 'c':3}
for k in list(data.keys()):
  if data[k] % 2 == 0:
    del data[k]
print(data)    