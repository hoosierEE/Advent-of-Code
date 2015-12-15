Note 'Strategy'
Transform lines of input into J code.
Execute the resulting code.
)

require'util.ijs'
s=:fread'input.txt'
replace=:4 :0
    NB. replace keyword with amount and prep for amend
    'amt kw' =. x
    if. kw +./@E. y do.
        mid =. y rplc (kw;'')
        '(0>.',(":amt),'+',mid,'{arg)',mid
    elseif. do.
        y
    end.
)

off2=:(_1;'turn off')&replace  NB. dim by 1
on2=:(1;'turn on')&replace  NB. brighten by 1
tog2=:(2;'toggle')&replace  NB. brighten by 2
proc2=:on2@off2@tog2  NB. apply all 3 transformations
run2=:3 :0
    arg=:1000 1000$0
    k=.inplace@proc2@pm every cutLF ', 'charsub s
    0!:0 k
    +/,arg
)

Note 'usage'
run2''
)