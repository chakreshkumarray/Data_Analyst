# Print Even Number
for num in range(1,20):
  if num % 2 == 0:
    print(num)

# Print Odd Number
for num in range(1,20):
  if num % 2 == 1:
    print(num)

# OR
for num in range(1,21):
  if num % 2 == 0:
    print(num)
  else:
    print(num)  

#
nums = [1,4,0,9,2,6,5,3,2,6]
for num in nums:
  if num % 2 == 0:
    print("Even number found: ",num)
    break
else:
  print("No Even numbers found")      