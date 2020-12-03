import strscans, os

echo "Starting to look"

var first, second: int
var letter, pass: string
var valid = 0

for line in lines os.paramStr(1):
  if scanf(line, "$i-$i $w: $+", first, second, letter, pass):
    if first > len(pass):
      continue
    if second > len(pass):
      continue
    if pass[first-1] != pass[second-1] and (pass[first-1] == letter[0] or pass[second-1] == letter[0]):
      valid = valid + 1

echo "Done checking"
echo "Found ", valid, " valid passwords"
