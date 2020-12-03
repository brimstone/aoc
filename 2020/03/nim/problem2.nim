import tables, os

echo "Starting to look"

var slope = initTable[int, string]()

var count=0
for line in lines os.paramStr(1):
  slope[count] = line
  count+=1

proc countTrees(slope: var Table[system.int, system.string], right, down: int, modify = false): int =
  var tree=0
  var y=0
  var x=down
  while x <= len(slope)-1:
    y+=right
    var s = slope[x]
    if y >= len(s):
      y -= len(s)
    if s[y] == '#':
      inc tree
      if modify:
        s[y]='X'
    else:
      if modify:
        s[y]='O'
    slope[x] = s
    x+=down
  tree

var trees = countTrees(slope, 1, 1)
trees *= countTrees(slope, 3, 1)
trees *= countTrees(slope, 5, 1)
trees *= countTrees(slope, 7, 1)
trees *= countTrees(slope, 1, 2)

#for s in 0..len(slope)-1:
#  echo slope[s]

echo "Done checking"
echo "Trees: ", trees
