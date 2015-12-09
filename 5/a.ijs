s =: cutLF 1!:1<'input.txt' NB. the data

Note 'part one'
    usage (verb order doesn't matter):
    wop dbl vos s 
)
wop =: 3 :'y{~I. a:=+/@((_2]\''abcdpqxy'')ss"1]) each y' NB. without evil pairs
dbl =: 3 :'y{~I. >(0~:+/)@(}:=}.) each y' NB. has a double letter
vos =: 3 :'y{~I. >(3&<:@(+/^:_)@(''aeiou''=/]) each ]) y' NB. 3 or more vowels
total_nice_p1 =: # wop dbl vos s NB. like method chaining

Note 'part two'
NB. nice strings have:
    1. at least 1 double pair that's not itself a triple (e.g. 'aaa')
    2. a 'bookended' letter (e.g. 'aba' or 'bbb')
)
bei =: 3 : 'I.2((]-:|.)@;)\2<\y' NB. index of "bookended" triple
dbi =: 3 : 'I.1<+/"1=2<\y' NB. index of first of pair of doubles
tri =: 3 : 'I.;3<@(0=+/@i.~)\y' NB. index of triples
total_nice_p2 =: +/;(3 :'0<*./((#@bei),(#@dbi),(-.@(dbi-:tri)))y') each s NB. boolean AND of conditionals
