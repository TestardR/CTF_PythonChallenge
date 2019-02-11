data = open('evil2.gfx',
            'rb').read()
# print(data)
print(len(data))

# Let's try to split the data into 5, but "dealing" the bytes instead of cards
# [i::5] means i for the first argument and every 5 arguments is sliced
# for i in range(5):
#     open('%d.jpg' % i, 'wb').write(data[i::5])
