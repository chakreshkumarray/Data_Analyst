fruits = ['apple','papaya','banana','grapes','orange']
for x in fruits:
  print(x)

#
for y in range(len(fruits)):
  print(fruits[y])

#
c = 0
for i in fruits:
  if i == 'apple':
    c +=1 
print(c)    

#
f_index = 0
for i in range(len(fruits)):
  if fruits[i] == 'orange':
    f_index = i
    break 
print(f_index) 

# 
reversed_list = []
for x in fruits[::-1]:
  reversed_list.append(x)
print(reversed_list)  

#
reversed_list = []
for x in range(len(fruits)-1,-1,-1):
  reversed_list.append(fruits[x])
print(reversed_list)  

# Minimum
nums = [54,58,18,78,55,23,31,22,65]
min_num = nums[0]
for i in nums:
  if min_num > i:
    min_num = i
print(min_num)  # 1    

# Maximum