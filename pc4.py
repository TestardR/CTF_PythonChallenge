#!/usr/bin/env python

import urllib.request
import re

url = "http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing="
num = str(16044/2)
# Load data
content = urllib.request.urlopen(
    url + num).read().decode()

# print(html)
output = open('output.html', 'w')
output.write(str(content))

match = re.search("and the next nothing is (\d+)", content)
# print(match)
# Note .group(0) will return the whole text that matches the pattern, while the captured segments start from .group (1)
# print(match.group(1))

# Autoamte the process
pattern = re.compile("and the next nothing is (\d+)")

while True:
    content = content = urllib.request.urlopen(
        url + num).read().decode()
    print(content)
    match = pattern.search(content)
    if match == None:
        break
    num = match.group(1)
    
# and the next nothing is 16044
# Yes. Divide by two and keep going.
# peak.html