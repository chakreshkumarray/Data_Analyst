
Student = {
  'Name': 'Chakresh',
  'Class': '8 Sem',
  'Mobile No': 8114278548,
  'Age':23,
  'Cgpa':7.14,
  'DOB': '01.01.2003'
  }

# update
Student['Age'] = 26
print(Student)

# add
Student['city'] = "Bhabhot"
print(Student)

# delete
del Student['Class']
print(Student)

# delete pop
Student.pop('Name')
Student.pop('Age','NA')
print(Student)

# Clear 
Student.clear()
print(Student)

# pop item delete item one by one 
Student.popitem()
print(Student)

# Update Method
# dict1:The dictionary to be updated
# dict2:The dictionary (or key-value iterable) providing updates.

profile = {
  'name':'Alice',
  'age':25
}
update_profile = {
  'age':26,
  'city':'New York'
}

profile.update(update_profile)
print(profile)

# another way
profile = {
  'name':'Alice'
}
profile.update([('age','12'),['city','New York']])
print(profile)

# Another way to update
profile = {
  'name': "Alice"
}
profile.update(country = 'Something')
print(profile)