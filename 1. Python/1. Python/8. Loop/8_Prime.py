
# Check Prime Number

x = int(input("Enter a number: "))
count = 0
for i in range(1, x + 1):
  if x % i == 0:
    count +=1
if count == 2:
  print("Prime")
else:
  print("Not Prime")      