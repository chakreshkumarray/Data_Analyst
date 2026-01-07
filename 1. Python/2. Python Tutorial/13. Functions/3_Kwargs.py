
# **Kwargs Keyword argument

def build_profile(**kwargs):
  print("Building profile..")
  for i, j in kwargs.items():
    print(f"{i}: {j}")

build_profile(name = "CK", age = 23, profession = "SD",hobbies = ["Cricket","Movies","Coding"] , city = "Sultanpur")

# Combined
def mixed_example(msg,*args,**kwargs):
  print(msg)
  print(args)
  print(kwargs)
mixed_example("Example",1,2,3, name = "CK",role = "SDE")  

# default kwargs
def mixed_example(msg1,msg2,msg3 = "Message3", *args, **kwargs):
  print(msg1, msg2, msg3)
  print(args)
  print(kwargs)
mixed_example("Example1","Example2",1,2,3, name = "CK",role = "SDE")

# add number with args
def add(x,y,z):
  return x + y + z

vals = [1, 2, 3]
print(add(*vals))

params = {
  "x" : 10,
  "y" : 20,
  "z" : 30
}
print(add(**params))