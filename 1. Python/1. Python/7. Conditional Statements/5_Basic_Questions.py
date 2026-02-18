# 1. Write a program to check whether a number is even or odd.
a = int(input("Enter a number: "))
if a % 2 == 0:
  print("Even")
else:
  print("Odd")

# 2. Write a program to check whether a number is positive, negative, or zero.
n = int(input("Enter a number: "))
if n > 0:
  print("positive")
elif n < 0:
  print("negative")
else:
  print("Zero")    

# 3. Write a program to find the largest among three numbers without using max().
a  = int(input("Enter first number: "))
b  = int(input("Enter second number: "))
c  = int(input("Enter third number: "))
if a >= b and a >= c:
  print("Largest: ",a)
elif b >= a and b >= c:
  print("Largest: ",b)
else:
  print("Largest: ",c)   

# 4 . Write a program to find the smallest among three numbers.
a  = int(input("Enter first number: "))
b  = int(input("Enter second number: "))
c  = int(input("Enter third number: "))
if a <= b and a <= c:
  print("Lowest: ",a)
elif b <= a and b <= c:
  print("Lowest: ",b)
else:
  print("Lowest: ",c) 

# 5. Write a program to check whether a year is a leap year.
year = int(input("Enter year: "))
if (year % 4 == 0 and year % 100 != 0) or year % 100 == 0:
  print("Leap year")
else:
  print("Not Leap year")

# 6. Write a program to check whether a character is a vowel or consonant.
ch = input()
if ch == 'a' or ch == 'e' or ch == 'i' or ch == 'o' or ch == 'u' or \
   ch == 'A' or ch == 'E' or ch == 'I' or ch == 'U' or ch == 'U':
   print("Vowels")
else:
   print("Consonants")

# 7. Check whether a number is divisible by both 3 and 5.
num = int(input("Enter number: "))
if num % 3 == 0 and num % 5 == 0:
  print("Divisible")
else:
  print("Not Divisible") 
  
# 8. Check if a number is a two-digit number.
num = int(input("Enter number: "))
if (num >= 10 and num <= 99) or (num <= -10 and num >= -99):
  print("Number is Two digits")
else:
  print("Number not two digit")  

# 9. Determine whether a person is eligible to vote.
age = int(input("Enter age: "))
if age >= 18:
  print("Eligible to vote")
else:
  print("Not eligible") 
  
# 10. Assign grade based on marks using if-elif ladder.
grade = int(input("Enter  grade: "))
if grade >= 90:
  print("A")
elif grade >= 80:
  print("B")
elif grade >= 70:
  print("C")
elif grade >= 40:
  print("Pass")
else:
  print("Fail")


# End Basic Questions --> 11. Intermediate Questions -->