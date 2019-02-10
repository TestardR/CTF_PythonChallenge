#!/usr/bin/env python

import urllib.request
import pickle

url = "http://www.pythonchallenge.com/pc/def/banner.p"
# Load data
content = urllib.request.urlopen(
    url).read()

content = pickle.load(urllib.request.urlopen(
    url))

# print(content)
# output = open('output.html', 'w')
# output.write(str(content))

for line in content:
    print("".join([key * value for key, value in line]))
