class Student:
    def __init__(self, name, marks):
        self.__name = name
        self.__marks = marks

    def get_marks(self):
        return self.__marks

    def set_marks(self, marks):
        if marks >= 0:
            self.__marks = marks
        else:
            print("Invalid marks")

s = Student("Chakresh", 90)

print(s.get_marks())

s.set_marks(95)
print(s.get_marks())

s.set_marks(-50)
