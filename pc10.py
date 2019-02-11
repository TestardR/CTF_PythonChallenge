import re

# By clicking the image, we get a "look-and-say sequence"
# a = [1, 11, 21, 1211, 111221,

start = '1'


def look_and_say(start):

    looking_at_previously = start[0]
    count = 0
    next_term = ''

    for term in start:
        if term == looking_at_previously:
            count += 1
        else:
            next_term += str(count) + looking_at_previously
            count = 1

        looking_at_previously = term
    next_term += str(count) + looking_at_previously

    return next_term


for i in range(30):
    start = look_and_say(start)

print(len(start))
# 5808