class Parent:
  def property(self):
    print("parent property")

class child1(Parent):
  pass

class child2(Parent):
  pass

c1 = child1()
c2 = child2()

c1.property()
c2.property()