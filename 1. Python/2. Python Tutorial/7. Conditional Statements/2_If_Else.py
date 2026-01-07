# if else
score = 52
if score >= 33:
  print("Passed")
else:
  print("Failed")
  print("Work hard")

#
age = 15
if(age >= 18):
  print("You can vote")
else:
  print("You can not vote yet.")

# 
password = input("Enter your password: ")
if len(password) >= 8:
  print("Valid password")
else:
  print("Not Valid")  

# Password Check using if else
age = 9
password = "Chak"
if age >= 18:
  if len(password) >= 8:
    print("Valid password")
  else:
    print("Not Valid")    
else:
  print("You are Ck.")

# check number is odd Or Even
x = int(input("Enter the number: "))
if x % 2 == 0:
  print("Even")
else:
  print("Odd")  