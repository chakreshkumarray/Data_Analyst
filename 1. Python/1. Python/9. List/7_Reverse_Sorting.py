nums = [1,2,3,4]
print(nums)

# Reverse
nums.reverse()
print(nums)

# Sort
words = ["Shivam","Chakresh","Ambreesh","Dheeraj"]
words.sort()
words.sort(reverse = True)
words.sort
print(words)
sorted_words = sorted(words)
print(sorted_words)

# sorted
words = ["Shivam","Chakresh","Ambreesh","Dheeraj"]
sorted_words = sorted(words, key=len, reverse=True)
print(sorted_words)

# abs
nums = [-10,8,-9,-2,4,-6]
print(nums)
nums.sort()
print(nums)
nums.sort(key = abs)
print(nums)

# 
words = ["Shivam","Chakresh","Ambreesh","Dheeraj"]
print(sorted(words,key=str.lower,reverse=True))
print(words[1:3].count("Shivam"))
print(words.count("Shivam"))
print(words.index("Shivam",0))
