NB. boolean verbs
'`AND NOT OR LSHIFT RSHIFT' =: (17 b.)`(65535&-)`(23 b.)`(33 b.~)`(33 b.~[:-])
xfrm =: ({:,'=:';_3&}.)&.;:S:0 NB. J-style assignment
d =: cutLF 1!:1<'input.txt' NB. data

