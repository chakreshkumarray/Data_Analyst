class GrandFather:
    def land(self):
        print("Grandfather land")

class Father(GrandFather):
    def house(self):
        print("Father house")

class Son(Father):
    def bike(self):
        print("Son bike")

s = Son()
s.land()
s.house()
s.bike()
