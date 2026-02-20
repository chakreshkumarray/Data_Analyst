
# We use enumerate() when we need both index and value while looping.
# 👉 Here we use range() and len()
# 👉 Code becomes longer
# 👉 Less readable

fruits = ["Banana","Papaya","Orange","Mango"]
for index,fruit in enumerate(fruits):
  print(fruits[index])