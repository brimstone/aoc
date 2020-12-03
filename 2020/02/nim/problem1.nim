import strscans, tables, os

echo "Starting to look"

var min, max: int
var letter, pass: string
var valid = 0

for line in lines os.paramStr(1):
  if scanf(line, "$i-$i $w: $+", min, max, letter, pass):
    var frequencies = toCountTable(pass)
    if frequencies[letter[0]] >= min and frequencies[letter[0]] <= max:
      valid = valid + 1
      echo valid, " Char ", letter, " = ", frequencies[letter[0]], ": ", pass
    #else:
    #  echo pass, " is invalid"

echo "Done checking"
echo "Found ", valid, " valid passwords"
