
# sum of three number
def sumofthree(a, b, c):
  return a + b + c

print(sumofthree(2,3,5))

# * Args Positional arguments
def sum_of_nums(*nums):
  total = 0
  for i in nums:
    total = total + i
  return total

print(sum_of_nums(4,4,5,3,6,2,1))

# * Args multiple type args positional args
def sum_of_nums(*nums, msg):
  print(msg)
  total = 0
  for i in nums:
    total = total + i
  return total

print(sum_of_nums(4,4,5,3,1,msg = "I am calculating message"))