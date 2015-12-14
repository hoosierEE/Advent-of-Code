NB. boolean verbs
'`AND NOT OR' =: *.`-.`+.
RSHIFT =: [33 b.~[:-]
LSHIFT =: [33 b.~]
xfrm =: ({:,'=:';_3&}.)&.;:S:0 NB. J-style assignment
d =: cutLF 1!:1<'input.txt' NB. data

