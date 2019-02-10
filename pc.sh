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
