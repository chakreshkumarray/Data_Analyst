
Student = {
  'Name': 'Chakresh',
  'Class': '8 Sem',
  'Mobile No': 8114278548,
  'Age':23,
  'Cgpa':7.14
}

print(hash("Name")) # 1917622589780418954
print(hash("Cgpa")) # -5488080296460647616

index = hash("Name") # 1917622589780418954
print(index)

index = hash("Age") # 8319580738851031591
print(index)

index = hash("Name") % 8 # 2
print(index)

index = hash("Age") % 8 # 7
print(index)

index = Student.get("Name") # Chakresh
print(index)