import strutils, tables, os

var memory = initTable[int, bool]()

echo "Starting to look"

for line in lines os.paramStr(1):
  let lineInt = parseInt(line)
  let firstmate = 2020 - lineInt
  #echo "looking for mates ", firstmate, " for ", line
  for mate in memory.keys():
    let secondmate = firstmate - mate
    if memory.hasKey(secondmate):
      echo line, ", ", mate, ", ", secondmate, " = ", lineInt * mate * secondmate
  memory[lineInt] = true

echo "Done checking"
