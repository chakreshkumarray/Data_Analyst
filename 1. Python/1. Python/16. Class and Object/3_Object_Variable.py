class Student:
    pass    # empty class


# Creating objects
s1 = Student()
s2 = Student()

# Creating instance variables using object reference
s1.name = "Rahul"
s1.age = 21

s2.name = "Anita"
s2.age = 22

# Accessing instance variables
print(s1.name, s1.age)
print(s2.name, s2.age)
