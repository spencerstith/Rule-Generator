import os
import re

d = os.listdir()
print(d)
f = open("images.txt", "w")
for a in d:
	r = a[4:][:-4]
	f.write("<h3 align='center'>Rule " + r + "</h3>\n")
	f.write("<p align='center'><img src='img/" + a + "' /></p>\n")
	f.write("\n")
f.close()
