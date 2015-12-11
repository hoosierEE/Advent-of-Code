s =: 1!:1<'input.txt'
NB. Transform input into J code...

NB. Note 'part 1'
off1 =: ('turn off';'0') rplc~ ]
on1 =: ('turn on';'1') rplc~ ]
tog1 =: 3 : 0
    if. 'toggle' +./@E. y do.
        mid =. ('toggle';'') rplc~ y
        '(-.' , mid , '{ arg)' , mid
    elseif. do.
        y
    end.
)
proc1 =: tog1@on1@off1

NB. part 2
replace =: 4 : 0
    NB. replace keyword with amount and prep for amend
    'amt kw' =. x
    if. kw +./@E. y do.
        mid =. y rplc (kw;'')
        '(0>.',(":amt),'+',mid,'{arg)',mid
    elseif. do.
        y
    end.
)

NB. replacement, specialized
off2 =: (_1;'turn off')&replace
on2 =: (1;'turn on')&replace
tog2 =: (2;'toggle')&replace
proc2 =: on2@off2@tog2 NB. apply all 3 transformations

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
    NB. turns (x1,y1 through x2,y2) into a boxed (startxy;sizexy) pair
    'ox oy' =. x
    'ex ey' =. y
    'wx wy' =. >:(ex,ey)-ox,oy NB. inclusive range due to increment
    <(ox +i. wx);(oy +i. wy)
)

run1 =: 3 :0
    arg =: 1000 1000 $ 0
    k=.inplace@proc1@pm every cutLF ', 'charsub s
    0!:0 k
    +/,arg
)

run2 =: 3 :0
    arg =: 1000 1000 $ 0
    k=.inplace@proc2@pm every cutLF ', 'charsub s
    0!:0 k
    +/,arg
)

