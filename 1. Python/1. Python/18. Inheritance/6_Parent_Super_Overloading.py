class Vehicle:
    def run(self):
        print("Vehicle is running")

class Car(Vehicle):
    def run(self):
        super().run()
        print("Car is running fast")

c = Car()
c.run()
