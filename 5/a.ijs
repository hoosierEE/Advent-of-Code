s =: cutLF 1!:1<'input.txt' NB. the data
NB. part 1
wop =: 3 :'y{~I. a:=+/@((_2]\''abcdpqxy'')ss"1]) each y' NB. without evil pairs
dbl =: 3 :'y{~I. >(0~:+/)@(}:=}.) each y' NB. has a double letter
vos =: 3 :'y{~I. >(3&<:@(+/^:_)@(''aeiou''=/]) each ]) y' NB. 3 or more vowels
NB. usage:
NB. wop dbl vos s NB. verb order doesn't matter

NB. part 2 (unfinished)
(}:-}.)~:2<\'xyabcdxy' NB. location of repeated pairs
