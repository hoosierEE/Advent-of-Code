NB. begin common utils used by parts 1 and 2
inplace =: 3 : 0
    NB. amend and modify arg in place
    'arg=:',y,'}arg'
)
paren =: 3 : 0
    load'regex'
    NB. parenthesize number range
    '('((<:@{.@;)@('\d'&rxmatch) y)}y, ')'
)
makerange =: (;:'through spl') rplc~ ]
pm =: paren@makerange NB. pdd arens and range
spl =: 4 : 0
    NB. turns the string 'x1,y1 through x2,y2' into a boxed (startxy;sizexy) pair
    'ox oy' =. x
    'ex ey' =. y
    'wx wy' =. >:(ex,ey)-ox,oy NB. inclusive range due to increment
    <(ox +i. wx);(oy +i. wy)
)
NB. end common utils