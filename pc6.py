import zipfile
import re

data = zipfile.ZipFile('channel.zip')
num = '90052'
comments = []

while True:
    content = data.read(num + '.txt').decode()
    comments.append(data.getinfo(num + '.txt').comment.decode())
    print(content)
    match = re.search('Next nothing is (\d+)', content)
    if match == None:
        break
    num = match.group(1)

print(''.join(comments))