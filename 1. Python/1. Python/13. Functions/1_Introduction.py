
print("Hello Chakresh")
len()

# Function without Argument
def intro():
  print("Hello world")
  print("My name is Chakresh Kumar")
  print("i live in India")
  print("Bye !")
  
intro()

# Function with Argument
def intro(first_name,last_name,country):                      # Parameter
  print("Hello world")
  print(f"My name is {first_name} {last_name}")
  print(f"i live in {country}")
  print("Bye !")
intro("Chakresh","Kumar","India")                          # Argument


# Function with No return value
def intro(first_name,last_name,country):                      
  print("Hello world")
  print(f"My name is {first_name} {last_name}")
  print(f"i live in {country}")
  print("Bye !")
res = intro("Chakresh","Kumar","India")
print(res) 


# Add Two Number
def add(a,b):
  print(f"sum of {a} and {b} is {a+b}")
add(12,13)  

# Square then sum of Number
def sum_square(a,b):
  return(a + b) **2

res = sum_square(1,2)
print(res)

# Divide Number
def divide(a, b):
  if b == 0:
    return None
  else:
    return a/b

print(divide(2,0))  

# pass list print sum of even number
def sum_of_even(li):
  total = 0
  for i in li:
    if i % 2 == 0:
      total += i
  return total

print(sum_of_even([1,4,5,6,7,87,2,5,6]))    

# Function with No return with default argument value
def intro(first_name,last_name,country = "Space"):                      
  print("Hello world")
  print(f"My name is {first_name} {last_name}")
  print(f"i live in {country}")
  print("Bye !")
res = intro("Chakresh","Kumar")
print(res) 

# Keyword Argument
def divide(a, b):
  if b == 0:
    return None
  else:
    return a/b

print(divide(a = 12, b = 10))  