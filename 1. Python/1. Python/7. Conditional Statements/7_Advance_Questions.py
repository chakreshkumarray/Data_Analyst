# 21. Check whether a year is a century leap year.
year  = int(input("Enter year: "))
if year % 400 == 0:
  print("Leap Year")
elif year % 100 == 0:
  print("Not Leap Year")
elif year % 4 == 0:
  print("Leap Year")
else:
  print("Not Leap Year")

# 22. Define Profit and Lost Percentage
cp = float(input())
sp = float(input())
if sp > cp:
  profit = sp-cp
  print("Profit %:",(profit / cp) * 100)
elif cp > sp:
  loss = cp - sp
  print("Loss %:",(loss / cp) * 100)
else:
  print("No Profit No Loss")

# 23. Solve quadratic equation and classify roots.
a = int(input()) 
b = int(input()) 
c = int(input())
d = b * b - 4 * a * c
if d > 0:
  print("Real and Distinct")
elif d == 0:
  print("Real and Equal")
else:
  print("Complex Roots")

# 24. Implement ATM withdrawal system .
balance = int(input())
withdraw = int(input())
if withdraw <= balance - 1000:
  balance = balance - withdraw
  print("Withdraw Successful")
  print("Remaining:",balance)
else:
  print("Insufficient Balance")

# 25. Create loan eligibility system.
salary = int(input())
age = int(input())
credit = int(input())
if salary >= 25000 and age >= 21 and credit >= 650:
  print("Eligible")
else:
  print("Not Eligible")

# 26. Determine BMI category.
weight = float(input())
height = float(input())
bmi = weight / (height * height)
if bmi < 18.5:
  print("Underweight")
elif bmi < 25:
  print("Normal")
elif bmi < 30:
  print("Overweight")
else:
  print("Obese")

# 27. Create grading system with subject pass condition.
m1 = int(input())
m2 = int(input())
m3 = int(input())
avg = (m1 + m2 + m3) / 3
if m1 >= 40 and m2 >= 40 and m3 >= 40:
  if avg >= 75:
    print("Distinction")
  else:
    print("Pass")
else:
  print("Fail")

# 28. Check whether three numbers form right-angled triangle.
a = int(input())
b = int(input()) 
c = int(input())
if a * a + b * b == c * c or a * a + c * c == b * b or b * b + c * c == a * a:
  print("Right Triangle")
else:
  print("Not Right Triangle")

# 29. Menu-driven banking system.
balance = 10000
choice = int(input("1.Deposit 2.Withdraw 3.Check Balance: "))
if choice == 1:
  amt = int(input())
  balance += amt
  print(balance)
elif choice == 2:
  amt = int(input())
  if amt <= balance:
    balance -= amt
    print(balance)
  else:
   print("Insufficient")
elif choice == 3:
  print(balance)

# 30. Validate date .
d = int(input())
m = int(input()) 
y = int(input())
if m >= 1 and m <= 12:
  if d >= 1 and d <= 31:
    print("Valid Format (Basic Check)")
  else:
    print("Invalid Date")
else:
  print("Invalid Month")

# 🔴 LOGIC + NESTED
# 31. Positive Even , Negative Odd etc. 
n = int(input())
if n > 0 and n % 2 == 0:
  print("Positive Even")
elif n > 0:
  print("Positive Odd")
elif n < 0 and n % 2==0:
  print("Negative Even")
else:
  print("Negative Odd")

# 32. Middle Value of Three
a = int(input()) 
b = int(input()) 
c = int(input())
if (a >= b and a <= c) or (a <= b and a >= c):
  print(a)
elif (b >= a and b <= c) or (b <= a and b >= c):
  print(b)
else:
  print(c)

# 33. Number in Multiple Ranges 
n = int(input())
if n >= 1 and n <= 50:
  print("Range 1")
elif n >= 51 and n <= 100:
  print("Range 2")
else:
  print("Out of Range")

# 34. Time AM/PM 
h = int(input())
if h < 12:
  print("AM")
else:
  print("PM")

# 35. Rock Paper Scissors 
u = input()
c = "rock"
if u == c:
  print("Draw")
elif (u == "rock" and c == "scissors") or \
 (u == "paper" and c == "rock") or \
 (u == "scissors" and c == "paper"):
  print("User Wins")
else:
  print("Computer Wins")

# 36. Shopping Discount , Coupon 
amount = int(input())
coupon = input()
if amount >= 5000:
  discount = amount * 0.2
elif amount >= 2000:
  discount = amount*0.1
else:
  discount = 0
if coupon == "SAVE100":
  discount += 100
print("Final:",amount - discount)

# 37. Login Attempts
correct = "admin"
for i in range(3):
  pwd = input()
  if pwd == correct:
    print("Login Success")
    break
else:
  print("Account Locked")

# 38. Movie Ticket Pricing
age = int(input())
weekend = input()
if age < 18:
  price = 100
else:
  price = 200
if weekend == "yes":
  price += 50
print(price)

# 39. Parking Fee
hours = int(input())
if hours <= 2:
  fee = 50
elif hours <= 5:
  fee = 100
else:
  fee = 200
print(fee)

# 40. Income Tax
income = int(input())
if income <= 250000:
  tax = 0
elif income <= 500000:
  tax = ( income - 250000) * 0.05
else:
  tax = (250000 * 0.05) + (income - 500000) * 0.2
print(tax)

# 🧠 TRICKY & EDGE
# 41. Divisible by 2,3 both or none
n = int(input())
if n % 2 == 0 and n % 3 == 0:
  print("Both")
elif n %2 == 0:
  print("Divisible by 2")
elif n % 3 == 0:
  print("Divisible by 3")
else:
  print("None")

# 42 Character Type Check 
ch = input()
if ch >= 'A' and ch <= 'Z' or ch >= 'a' and ch <= 'z':
  print("Alphabet")
elif ch >= '0' and ch <= '9':
  print("Digit")
else:
  print("Special Character")

# 43. Harshad Number 
n = int(input())
temp = n
s = 0
while n > 0:
  s += n % 10
  n //= 10
if temp % s == 0:
  print("Harshad")
else:
  print("Not Harshad")

# 44. Perfect Number 
n = int(input())
s = 0
for i in range(1,n):
  if n % i == 0:
    s += i
if s == n:
  print("Perfect Number")
else:
  print("Not Perfect")

# 45. Angles Form Triangle 
a = int(input())
b = int(input())
c = int(input())
if a + b + c == 180 and a > 0 and b > 0 and c > 0:
  print("Valid")
else:
  print("Invalid")

# 46. Traffic Light 
color = input()
if color == "red":
  print("Stop")
elif color == "yellow":
  print("Wait")
elif color == "green":
  print("Go")

# 47. Tolerance
value = int(input())
target = int(input())
low = target * 0.9
high = target * 1.1
if value >= low and value <= high:
  print("Within Tolerance")
else:
  print("Out of Range")

# 48. Username Validation 
u = input()
if len(u) >= 5:
  print("Valid")
else:
  print("Invalid")

# 49. Nested Distinction Rule
m = int(input())
if m >= 40:
 if m >= 75:
    print("Distinction")
 else:
    print("Pass")
else:
  print("Fail")

# 50. Business Rule Engine
amount = int(input())
member = input()
if member == "yes":
 if amount > 5000:
    print("Gold Benefit")
 else:
    print("Silver Benefit")
else:
  print("No Membership Benefit")   


#############################################################