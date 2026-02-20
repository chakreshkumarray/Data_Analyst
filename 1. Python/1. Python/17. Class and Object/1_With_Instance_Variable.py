class Car:
    def start(self):
        print(self.brand, "car started")


# Object creation
car1 = Car()
car2 = Car()

# Creating instance variables WITHOUT constructor
car1.brand = "BMW"
car2.brand = "Audi"

# Calling method
car1.start()
car2.start()
