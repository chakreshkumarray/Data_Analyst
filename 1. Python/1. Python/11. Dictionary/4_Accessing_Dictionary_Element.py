
Student = {
  'Name': 'Chakresh',
  'Class': '8 Sem',
  'Mobile No': 8114278548,
  'Age':23,
  'Cgpa':7.14,
  'DOB': '01.01.2003'
  }

# Using Square[] Brackets
print(Student['Age'])
print(Student['Class'])

# Using Get() Method
print(Student.get("Name"))
print(Student.get("city") is None)
print(Student.get("Name"), 'NA')


students = {
  'Ram': 88,
  'Shyam': 87,
  'Ghanshyam':86
}

key = input().title()

print(students.get(key.title(),"Not found"))

if key in students:
  print(students[key])
else:
  print("Not found")  
