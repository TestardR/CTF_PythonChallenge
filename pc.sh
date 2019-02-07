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