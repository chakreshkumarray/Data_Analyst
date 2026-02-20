class Father:
    def skills(self):
        print("Father skills")

class Mother:
    def skills(self):
        print("Mother skills")

class Child(Father, Mother):
    pass

c = Child()
c.skills()
