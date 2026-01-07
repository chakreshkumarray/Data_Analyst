
a = 1       # Global variable
def fun():
  a = 12    # Local variable
  print(f"value of a is {a}")
fun()
print(f"value of a is {a}")

# Example
name = "Alice"
def outer_function():
  name = "Bob"
  def inner_function():
    name = "Charlie"
    print(f"Inner function: {name}")
  inner_function()
  print(f"Outer function: {name}")
outer_function()
print(f"Global scope: {name}")    

# Declare global variable
counter = 0
def increment():
  global counter
  counter = counter + 1
  print(f"Counter: {counter}")

increment()  
increment()
increment()
print(f"Counter: {counter}")

# Reset
counter = 0
def increment():
  global counter
  counter = counter + 1
  print(f"Counter: {counter}")
def reset():
  global counter
  counter = 0
increment()  
increment()
reset()
increment()

# Modify Global Variable
x = 10
y = 20
z = 30
def modify_global():
  global x, y, z
  x = 100
  y = 200
  z = 300
modify_global()
print(f"x = {x}, y = {y}, z = {z}")

# Non-Local
def outer_function():
  x = 10
  def inner_function():
    nonlocal x
    x = 20
    print(f"Inner function, x = {x}")
  print(f"Before inner function, x = {x}")
  inner_function()
  print(f"After inner function, x = {x}")
outer_function()    

# Example
def create_functions():
  functions = []
  for i in range(3):
    def func():  # x = i
      return i  # x
    functions.append(func)
  return functions
funcs = create_functions()
for i in funcs:
  print(i())  

def outer():
  messsage = "hello"
  def inner():
    return messsage  # uses a variable from outer
  return inner
f = outer()    # outer() is done now
print(f())  # prints "hello"