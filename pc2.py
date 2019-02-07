#!/usr/bin/env python

import urllib.request
import re

# Load data
html = urllib.request.urlopen(
    "http://www.pythonchallenge.com/pc/def/ocr.html").read().decode()

# Select the right portion, gives an array of data if many occurrences
comments = re.findall("<!--(.*?)-->", html, re.DOTALL)

# Select second item in array
data = comments[1]

output = open('output.html', 'w')
output.write(str(data))

# print(data)

# Find rare character
count = {}
for c in data:
    count[c] = count.get(c, 0) + 1

print(count)

# In the right order
ordered = "".join(re.findall("[A-Za-z]", data))
print(ordered)