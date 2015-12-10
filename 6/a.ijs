s =: 1!:1<'input.txt'

NB. Transform input into J code...

off =: ('turn off';'0') rplc~ ]
on =: ('turn on';'1') rplc~ ]

toggle =: 3 : 0
if. 'toggle' +./@E. y do.
    mid =. ('toggle';'') rplc~ y
    not =. '(-.'
    frm =. '{arg)'
    not,mid,frm,mid
    NB. '(-.' , mid , '{ arg)' , mid
elseif. do.
    y
end.
)

off2 =: 3 : 0
if. 'turn off'+./@E. y do.
mid =. ('turn off';'')rplc~y NB. remove the word from the string
'(_1+',mid,'{arg)',mid
elseif. do. y end.
)

on2 =: 3 : 0
if. 'turn on'+./@E. y do.
mid =. ('turn on';'')rplc~y NB. remove the word from the string
'(1+',mid,'{arg)',mid
elseif. do. y end.
)

tog2 =: 3 : 0
if. 'toggle'+./@E. y do.
mid =. ('toggle';'')rplc~y NB. remove the word from the string
'(2+',mid,'{arg)',mid
elseif. do. y end.
)

inplace =: 3 : 0
'arg=:',y,'}arg'
)

makerange =: (;:'through spl') rplc~ ]

NB. toggle =: 3 : '(-.(1 1 spl 2 2){y)(1 1 spl 2 2)}y'

fs =: 3 : 0
    NB. find first space before digit
    (<:@{.@;)@('\d'&rxmatch) y 
)

paren =: 3 : 0
    NB. parenthesize number range
    '('(fs y)}y, ')'
)


pm =: paren@makerange NB. pdd arens and range
NB. usage:
NB. pm every cutLF ', 'charsub s  NB. remove commas and transform

NB. verb to turn (x1,y1 through x2,y2) into a range suitable for use by amend
spl =: 4 : 0
    'ox oy' =. x
    'ex ey' =. y
    'wx wy' =. >:(ex,ey)-ox,oy NB. inclusive range via increment
    <(ox +i. wx);(oy +i. wy)
)

NB. modify script and run result
arg =: 1000 1000 $ 0 NB. start with all lights off
NB. result =: inplace@on@off@toggle@pm every cutLF ', 'charsub s
result2 =: inplace@on2@off2@tog2@pm every cutLF ', 'charsub s
answer =: +/,arg