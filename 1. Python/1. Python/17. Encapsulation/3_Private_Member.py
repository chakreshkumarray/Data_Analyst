class Student:
    def __init__(self, name, marks):
        self.__name = name    # private
        self.__marks = marks

s = Student("Rahul", 90)

# print(s.__name)   ❌ Error
