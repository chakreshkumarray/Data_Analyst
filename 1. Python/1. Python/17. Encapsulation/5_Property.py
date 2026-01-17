class Student:
    def __init__(self, marks):
        self.__marks = marks

    @property
    def marks(self):
        return self.__marks

    @marks.setter
    def marks(self, value):
        if value >= 0:
            self.__marks = value
        else:
            print("Invalid marks")

s = Student(80)

print(s.marks)     # getter

s.marks = 95       # setter
print(s.marks)

s.marks = -10
