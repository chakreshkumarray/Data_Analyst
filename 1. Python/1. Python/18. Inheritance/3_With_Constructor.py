class Person:
    def __init__(self, name):
        self.name = name

    def show(self):
        print("Name:", self.name)

class Student(Person):
    def study(self):
        print(self.name, "is studying")

s = Student("Chakresh")
s.show()
s.study()
