class Vehicle:
    def run(self):
        print("Vehicle is running")

class Bike(Vehicle):
    def run(self):
        print("Bike is running")

b = Bike()
b.run()
