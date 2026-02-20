class Car:
    # Constructor
    def __init__(self, brand, year):
        self.brand = brand      # instance variable
        self.year = year

    # Instance method
    def start(self):
        print(self.brand, "car started")

    def show_details(self):
        print("Brand:", self.brand)
        print("Year:", self.year)


# Object creation
car1 = Car("BMW", 2023)
car2 = Car("Audi", 2022)

# Calling methods using objects
car1.start()
car1.show_details()

print("---------------")

car2.start()
car2.show_details()
