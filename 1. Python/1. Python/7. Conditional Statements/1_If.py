
age = int(input("Enter age: "))
if(age >= 18):
  print("You are an adult")
  print("I said you are an adult")
print("Outside of if blocks")  


temp = int(input("Enter tempreature: "))
is_raining = bool("Leave Empty if not raining")
if(temp > 10 and is_raining):
  print("wear jacket")

name = " "
if name:
  print(name) 

temp = 5
is_snowing = True
if(temp < 10):
  print("It is Freezing")
  print("wear a heavy coat")
  if(is_snowing):
    print("and don't forget your boots")
print("have a nice day!")    

money = 500
is_popcorn_available = True
if(money >= 400):
  print("Movie dekhne  gaye")
  if(is_popcorn_available):
    print("popcorn khaye") 

score = 89
if score > 90:
  print("Excellent")
print("Keep up the good work") 

score = 80
if score < 60:
  pass
print("You need to study more")  
