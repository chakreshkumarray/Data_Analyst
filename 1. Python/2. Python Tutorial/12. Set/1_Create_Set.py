
# A create by Literal
numbers = {4,1,2,1,6,9,5,6}

names = {"Alice","Bob","Charlie","Joe"}

mixed = {1, "Hello", 3.14, True}

# e = {} this is not empty set
e  = set() # this is empty set

s = {0,1,3,5,1,2,1,3,5,1,1,3,5,1,3,1,5,3,4,4,1,3,1,3} # not allow duplicate
print(s)

s = {1, "Hello",True , (1,2,4), [1,3,4]}
print(s)

# B create by set() constructor
list_data = [1, 2, 3, 2, 1, 4]
set_from_list = set(list_data)
print(set_from_list)
print(type(set_from_list))
print(len(set_from_list))

text = "Hello"
set_from_string = set(text)
print(set_from_string)

empty_set = set()
print(type(empty_set))
print(len(empty_set))

s = set(range(1,6))
print(s)