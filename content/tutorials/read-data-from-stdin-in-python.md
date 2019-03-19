/*
Title: Read Stdin data in Python
Sort: 2
*/

Originally posted on: [blog.ruanbekker.com](https://blog.ruanbekker.com/)

Using Python's `sys` library to read data from `stdin`.

In this basic example we will strip our input, delimited by the comma character, add it to a list, and print it out

## Python: Read Data from Standard Input

```python
import sys
import json

mylist = []

data_input = sys.stdin.read()
destroy_newline = data_input.replace('\n', '')
mylist = destroy_newline.split(', ')

print("Stripping each word and adding it to 'mylist'")
print("Found: {} words in 'mylist'".format(len(mylist)))
for x in mylist:
    print("Word: {}".format(x))
```

We will echo three words and pipe it into our python script:

```bash
$ echo "one, two, three" | python basic-stdin.py
Stripping each word and adding it to 'mylist'
Found: 3 words in 'mylist'
Word: one
Word: two
Word: three
```
