# 11. Check whether three sides form a valid triangle.
a = int(input("Side A: "))
b = int(input("Side B: "))
c = int(input("Side C: "))
if a + b > c and b + c > a and c + a > b:
  print("Valid Triangle")
else:
  print("Invalid Triangle")

# 12. Determine the type of triangle.
a = int(input("Side A: "))
b = int(input("Side B: "))
c = int(input("Side C: "))
if a == b and b == c:
  print("Euilateral")
elif a == b and b == c and a == c:
  print("Isosceles")  
else:
  print("Scalene") 

# 13. Check whether a number is prime.
n = int(input("Enter a number: "))
if n <= 1:
  print("Not Prime")
else:
  count = 0
  for i in range(1, n + 1):
    if n % i == 0:
      count += 1
  if count == 2:
    print("Prime")
  else:
    print("Not Prime")

# 14. Check whether a number is a perfect square.
n = int(input("Enter a number: "))
i = 1
flag = 0
while i * i <= n:
  if i * i == n:
    flag = 1
    break
  i += 1
if flag == 1:
  print("Perfect Square")
else:
  print("Not Perfect Square")

# 15. Find the second largest among three numbers.
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))
c = int(input("Enter third number: "))
if (a >= b and a <= c) or ( a <= b and b >= c):
  print("Second: ",a)
elif (b >= a and b <= c) or (b <= a and b >= c):
  print("Second: ",b)
else:
  print("Second: ",c)

# 16. Implement a simple calculator.
a = int(input())
b = int(input())
op = int(input())
if op == '+':
  print(a+b)
elif op == '-':
  print(a-b)
elif op == '*':
  print(a*b)
elif op == '/':
  print(a/b)
else:
  if b!=0:
    print("Divisible by zero")   

# 17. Check whether a number is palindrome (without string).
n = int(input())
temp = n
rev = 0
while n > 0:
  d = n % 10
  rev = rev * 10 + d
  n //= 10
if temp == rev:
  print("Palindrome")
else:
  print("Not Palindrome")

# 18. Check whether a 3-digit number is Armstrong.
n = int(input())
temp = n
s = 0
while n > 0:
  d = n % 10
  s += d * d * d
  n  //= 10
if s == temp:
  print("Armstrong Number")
else:
  print("No Armstrong")

# 19. Calculate electricity bill based on slabs
unit = int(input())
if unit <= 100:
  bill = unit * 5
elif unit <= 200:
  bill  = 100 * 5 + (unit - 100) * 7
else:
  bill = 100 * 5 + 100 * 7 + (unit - 200) * 10
print("Bill ",bill)

# 20. Validate a strong password (must contain uppercase, lowercase, digit, special character).
password = input()
u =  l = d = s = 0
for ch in password:
  if ch >= 'A' and ch <= 'Z':
    u = 1
  elif ch >= 'a' and ch <= 'z':
    l = 1
  elif ch >= 0 and ch <= 9:
    d = 1
  else:
    s = 1      
if u and l and d and s:
  print("Stromg Password")
else:
  print("Weak Password") 

# End Intermediate Questions --> 21. Advance Questions -->