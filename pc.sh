lvl 0 --> lvl 1
// change the url
http://www.pythonchallenge.com/pc/def/1.html
// answer 2**38
// get the result 274877906944, then set the url to 
http://www.pythonchallenge.com/pc/def/274877906944.html

lvl 1 --> lvl 2
// the point of this level is to make use of .maketrans()
// given gibberish we have to translate each letter to 2 steps ahead
// We get :
i hope you didnt translate it by hand. thats what computers are for. doing it in by hand is inefficient and thats why this text is so long.
using string.maketrans() is recommended. now apply on the url.
// apply to the url, we get:
ocr
http://www.pythonchallenge.com/pc/def/ocr.html

lvl 2 --> lvl 3
// The point of this level is to select data among a mass of it.
// After data isolation : 
comments = re.findall("<!--(.*?)-->", html, re.DOTALL)
// We worked on the selection of rare occurences
count = {}
for c in data:
    count[c] = count.get(c, 0) + 1

print(count)
// To order data for more visibility :
ordered = "".join(re.findall("[A-Za-z]", data))
// 
equality

lvl 3 --> lvl 4
// The image shows 3 big candles on each side of a small one. The description hints us to find letters!
// 1. Load data
// Similar to level 2, we extract the text from HTML directly.
// 2. Find the matches
// The pattern can be described as [^A-Z]+[A-Z]{3}([a-z])[A-Z]{3}[^A-Z]+
[a-z]: 1 lower case letter
[A-Z]: 1 upper case letter
[A-Z]{3}[a-z][A-Z]{3}: 3 upper case letters + 1 lower case letter + 3 upper case letters
[^A-Z]: any character BUT NO upper case letter
[^A-Z]+: at least one such character
// 3. Join everyhting together
"".join()

lvl 4 --> lvl 5
// Click on the image, you would see 
and the next nothing is 44827
// And the url changed to http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing=12345
Change the url with the new number and another number will be given.
To automate the process we had to create a while loop changing the value of num
// peak.html

lvl 5 --> lvl 6
// This level makes you use 'pickle', which is Pythons object serializtion module
// To load data using pickle to deserialize it:
data = pickle.load(urlopen("http://www.pythonchallenge.com/pc/def/banner.p"))
// We get a list of tuples but it does not look like a banner
// We convert the repetitive characters to tuples of (charecters, number of appearance)
// We made a loop inside another loop to do so :
for line in content:
    print("".join([key * value for key, value in line]))
// channel.html

lvl 6 --> lvl 7
// http://www.pythonchallenge.com/pc/def/channel.html
// change the url to :
// http://www.pythonchallenge.com/pc/def/channel.zip
// Unzip it. In readme.txt:
welcome to my zipped list.

hint1: start from 90052
hint2: answer is inside the zip
//
// Same as in Python Challenge 4, loop through the file changing the files number
// We get 
Collect the comments.
//
// It turns out that zip file may contain some comments, and they can be accessed by:
// ZipFile.comment: comment associated with the ZIP file.
// ZipInfo.comment: comment for the individual archive member.
//
// Add this to the code :
comments.append(f.getinfo(num + ".txt").comment.decode("utf-8"))
print("".join(comments))
// If you try http://www.pythonchallenge.com/pc/def/hockey.html, you will get
its in the air. look at the letters.
// oxygen


lvl 7 --> lvl 8
// Given an image with gray scale, we want to analyse to get the information to the next level
// To do so we will make use of an image processing library Pillow
// we can get the pixel by providing indeces:
img.getpixel((0,0))
(79, 92, 23, 255)
// To get the grey scale, we can take the middle row of the pixels:
row = [img.getpixel((x, img.height / 2)) for x in range(img.width)]
// As you can tell, row has lots of duplicates, since each grey blocks width is larger than 1 pixel. If you do some 
// manual counting, you know it is exactly 7 pixels wide, this should be the easiest way to de-dup:
row = row[::7]
// Since RGB is using a positive number in [0, 255] for each color, we can assume it represents a ASCII character
// integrity

lvl 8 --> lvl 9
// The point of this level is to make use of decompression library bzip2
// Here are some clues that it is "bzip2"
# .magic:16 = 'BZ' signature/magic number .version:8 = 'h' for Bzip2 ('H'uffman coding), '0' for Bzip1 (deprecated) .hundredkblocksize:8 = '1'..'9' block-size 100 kB-900 kB (uncompressed)
// add a b before the file to make python aware that it is a byte file.
// id: hyge
// pw : file

lvl 9 --> lvl 10
// The point of this level is to draw iamges according to data stored in the source code
// Use Pillow / PIL library to make use of it
// bull.html

lvl 10 --> lvl 11
// The point of this level is to play around with a 'look_and_say sequence'
// First solution, we tried to build a look allowing us to reproduce the sequence, it was laborious but it actually worked. 

lvl 11 --> lvl 12
// The point of this level is to play around with images pixels
// Distinguishing pixels in terms of odd and even, we create a new image settings odd pixels color and odd position and viceversa for even pixels color 
// We obtain a new image with evil written on it
// evil.html