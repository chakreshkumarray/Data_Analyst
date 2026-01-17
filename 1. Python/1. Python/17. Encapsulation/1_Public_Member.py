class Student:
    def __init__(self, name, marks):
        self.name = name      # public
        self.marks = marks    # public

s = Student("Chakresh", 90)

print(s.name)
print(s.marks)
