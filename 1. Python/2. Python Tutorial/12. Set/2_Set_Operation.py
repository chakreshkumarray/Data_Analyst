
# Add
my_set = {1, 2, 3}
my_set.add(4)
print(my_set)

# multi Add
my_set.update([5, 6, 7])
print(my_set)

# Add String
my_set.update("abc")
print(my_set)

# Add multi mixed
my_set.update([8, 9], {10, 11}, "xy")
print(my_set)

# Remove element
my_set.remove(1)
print(my_set)

# Discard element
my_set.discard(20)
print(my_set)

# Pop Delete in last
my_set.pop()
print(my_set)

# Membership
fruits = {"apple","banana","orange","grapes"}
print("apple" in fruits)
print("apple" not in fruits)

# Time
import time
large_list = list(range(100000))
large_set = set(range(100000))
search_value = 99999

start_time = time.time()
# print(start_time)
result_list = search_value in large_list
list_time = time.time() - start_time

start_time = time.time()
result_set = search_value in large_set
set_time = time.time() - start_time

print(list_time)
print(set_time)
