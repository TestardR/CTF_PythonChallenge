import requests
from io import BytesIO
from PIL import Image
import re


img = Image.open(BytesIO(requests.get(
    'http://www.pythonchallenge.com/pc/def/oxygen.png').content))

# print(img.width)
# print(img.height)
# print(img.getpixel((0,0)))
# To get the grey scale, we can take the middle row of the pixels:
row = [img.getpixel((x, img.height / 2)) for x in range(img.width)]
# print(row)
row = row[::7]
# print(row)
# Remove noise: pixels that are not grey sacle, which have the same value for R,G, and B.
ords = [r for r, g, b, a in row if r == g == b]
# print("".join(map(chr, ords)))
nums = re.findall("\d+", "".join(map(chr, ords)))
print("".join(map(chr, map(int, nums))))
