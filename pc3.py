#!/usr/bin/env python

import urllib.request
import re

# Load data
html = urllib.request.urlopen(
    "http://www.pythonchallenge.com/pc/def/equality.html").read().decode()

# Select the right portion, gives an array of data if many occurrences
comments = re.findall("<!--(.*?)-->", html, re.DOTALL)

# Select second item in array
data = comments[0]

output = open('output.html', 'w')
output.write(str(data))

# print(data)

# Find the Matches
select = re.findall("[^A-Z]+[A-Z]{3}([a-z])[A-Z]{3}[^A-Z]+", data)
joinSelect = "".join(re.findall("[^A-Z]+[A-Z]{3}([a-z])[A-Z]{3}[^A-Z]+", data))
print(joinSelect)
