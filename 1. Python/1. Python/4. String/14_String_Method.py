name = "Chakresh Kumar"
print(name.upper())
print(name.lower())

txt = "       i am Chakresh Kumar Ray son of Achchhelal mother Suman Devi             "
print(txt.title())
print(txt.capitalize())

titles = "       i am Chakresh Kumar Ray son of Achchhelal mother Suman Devi             "
print(titles.strip())
print(titles.lstrip())
print(titles.rstrip())
print(titles.find("C"))
print(titles.find("Chakresh",19))
print(titles.count("Chakresh"))
print(titles.index("mother"))
print(titles.replace("C","A"))

story = "i have done b.tech in information technology from sultanpur uttar pradesh"
text1 = "Python"
text2 = "Python3"
text3 = "5464419"
print(text1.isalpha())
print(text2.isalpha())
print(text2.isalnum())
print(text1.isalnum())
print(text1.isdigit())
print(text3.isdigit())

poem = "b.tech in information technology from sultanpur uttar pradesh"
print(poem.islower())
print(poem.isupper())
print(poem.isspace())
print(poem.startswith("b"))
print(poem.endswith("r"))

sentence = "b.tech in information technology from sultanpur uttar"
print(sentence.split())

joints = ['b.tech', 'in', 'information', 'technology', 'from', 'sultanpur', 'uttar']
print(" ".join(joints))
