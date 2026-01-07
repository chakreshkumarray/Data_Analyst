# if elif else

score = 76
if score >= 90:
  print("A")
elif score >= 80:
  print("B")
elif score >= 70:
  print("C")
elif score >= 60:
  print("D")
else:
  print("F")     

#
score = 76
if score >= 90:
  grade = "A"
elif score >= 80:
  grade = "B"
elif score >= 70:
  grade = "C"
elif score >= 60:
  grade = "D"
else:
  grade = "F"
print(f"Your grade is {grade}")     

# 
tempreature = 45
if tempreature < 32:
  print("It's freezing . Wear a heavy coat.")
elif tempreature < 50:
  print("It's cold. Wear a jacket")
elif tempreature < 70:
  print("It's cool . Wear a light sweater")
elif tempreature < 85:
  print("It's worm. T-Shirt weather")
else:
  print("It's hot! Stay hydrated") 

# 
number = 15
if 0 < number <= 9:
  print("Positive single digit")
elif number >= 0:
  print("Postive")
else:
  print("zero or negative") 

# 
has_fever = True
has_cough = True
has_rash = False
if has_cough:
  print("Take cough syrup.")
if has_fever :
  print("Take fever medicine")
if has_rash:
  print("Apply anti-itch cream")  

# 
age = 25
income = 50000

if age >= 18:
  print("Adult")
  if income < 30000:
    print("Low income tax bracket")
  elif income < 70000:
    print("Middle income tax bracket")
  else:
    print("High income tax bracket")
else:
  print("Minor - no income tax")       

 #
x = int(input())
if x == 5:
  print("x is 5")

#
a = 9
if a == 6 or a == 7 or a == 9:
  print("Ck")
else:
  print("Ray") 

# 
