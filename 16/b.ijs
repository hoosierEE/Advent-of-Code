Note 'approach'
Process both the puzzle and the clue so they're in the same format,
which means the clue is an array of key,value pairs,
and the puzzle is 500 rows of arrays of k,v pairs.
Part 2: 
)

i =: fread'input.txt'   NB. original puzzle
c =: fread'ticker.txt'  NB. original clue

cp =: ;:>cutLF c                     NB. processed clue
ip =: (_2,\;:)each cutLF i-.','      NB. processed puzzle 

a =: >:I.3=+/"1 cp e."2 >ip   NB. find the Sue who has 3 matches to clue
