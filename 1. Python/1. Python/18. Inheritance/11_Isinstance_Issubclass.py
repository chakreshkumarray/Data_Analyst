class Animal:
    pass

class Dog(Animal):
    pass

d = Dog()

print(isinstance(d, Dog))     # True
print(isinstance(d, Animal))  # True
print(issubclass(Dog, Animal))# True
