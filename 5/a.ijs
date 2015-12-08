s =: cutLF 1!:1<'input.txt' NB. the data
NB. part 1
wop =: 3 :'y{~I. a:=+/@((_2]\''abcdpqxy'')ss"1]) each y' NB. without evil pairs
dbl =: 3 :'y{~I. >(0~:+/)@(}:=}.) each y' NB. has a double letter
vos =: 3 :'y{~I. >(3&<:@(+/^:_)@(''aeiou''=/]) each ]) y' NB. 3 or more vowels
NB. usage:
NB. wop dbl vos s NB. verb order doesn't matter

NB. part 2 (unfinished)
NB. nice strings have:
NB. 1. at least 1 double pair that's not itself a triple (e.g. 'aaa')
NB. 2. a 'bookended' letter (e.g. 'aba' or 'bbb')
double_pairs =: NB. return double pairs to later test against triple
triplets =: 3 : '({.p){~I.=/p=.2<\"1(y,:(1|.y))'
matched_ends =: {.={: NB. use on triplets
