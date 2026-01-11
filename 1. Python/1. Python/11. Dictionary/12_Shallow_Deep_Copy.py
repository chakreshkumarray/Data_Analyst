
Student = {
  "name": "Rahul",
  "marks": [90,85,88]
}
another_student = Student # normal copy id different
another_student = Student.copy() # shallow copy id same
Student["marks"].append(99)
print(Student)
print(another_student)
print(id(Student))
print(id(another_student))

# Deep Copy
import copy
Student = {
  "name": "Rahul",
  "marks": [90,85,88]
}
deep_copy = copy.deepcopy(Student)
deep_copy['marks'].append(100)
print(Student["marks"])
print(deep_copy["marks"])
print(id(Student))
print(id(deep_copy))
