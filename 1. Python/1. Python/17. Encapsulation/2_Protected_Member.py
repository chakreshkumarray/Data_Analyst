class Student:
    def __init__(self, name, marks):
        self._name = name     # protected
        self._marks = marks

s = Student("Chakresh", 90)

print(s._name)
print(s._marks)
