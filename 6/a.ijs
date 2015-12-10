s =: 1!:1<'input.txt'


NB. Approach: transform the input text into J code
fs =: 3 : '(<:@{.@;)@(''\d''&rxmatch) y' NB. find space-before-digit
sp =: 3 : '''(''(fs y)}y' NB. replace that space with an open paren
spp =: 3 : '''(''(fs y)}y' , ')'"_ NB. wrap numbers with parens

off =: 'turn off';'
sa =: (;:'through spl') rplc~ ] NB. replace 'through' with ',:'
spp@sa every cutLF ', 'charsub s NB. add closing paren


NB. verb to turn (x1,y1 through x2,y2) into a range suitable for use by amend (})
spl =: 4 : 0
    'ox oy' =. x
    'ex ey' =. y
    'wx wy' =. >:(ex,ey)-ox,oy NB. inclusive range
    <(ox +i. wx);(oy +i. wy)
)
