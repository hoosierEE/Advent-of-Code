Note 'Strategy'
Transform lines of input into J code.
Execute the resulting code.
)

s=:fread'input.txt'
require'util.ijs'
NB. simple string replacements
off1=:('turn off';'0') rplc~ ]
on1=:('turn on';'1') rplc~ ]
NB. handle 'toggle' case and parenthesize expression
tog1=:3 :0
    if. 'toggle' +./@E. y do.
        mid =. ('toggle';'') rplc~ y
        '(-.' , mid , '{ arg)' , mid
    elseif. do.
        y
    end.
)
proc1 =: tog1@on1@off1
run1=:3 :0
    arg =: 1000 1000 $ 0
    k=.inplace@proc1@pm every cutLF ', 'charsub s
    0!:0 k
    +/,arg
)

Note 'usage'
run1''
)