import strutils, tables, os

var memory = initTable[int, bool]()

echo "Starting to look"

for line in lines os.paramStr(1):
  let lineInt = parseInt(line)
  let mate = 2020 - lineInt
  echo "looking for mate ", mate, " for ", line
  if memory.hasKey(mate):
    echo line, " and ", mate, " = ", lineInt * mate
  else:
    memory[lineInt] = true

echo "Done checking"
