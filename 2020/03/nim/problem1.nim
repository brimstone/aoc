import tables, os

echo "Starting to look"

var slope = initTable[int, string]()

var count=0
for line in lines os.paramStr(1):
  slope[count] = line
  count+=1

var tree=0
var y=0
for x in 1..len(slope)-1:
  y+=3
  var s = slope[x]
  if y >= len(s):
    y -= len(s)
  if s[y] == '#':
    tree+=1
    s[y]='X'
  else:
    s[y]='O'
  slope[x] = s

for s in 0..len(slope)-1:
  echo slope[s]

echo "Done checking"
echo "Trees: ", tree
