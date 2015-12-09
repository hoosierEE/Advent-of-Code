s =: 1!:1<'input.txt'
fs =: 3 : '(<:@{.@;)@(''\d''&rxmatch) y' NB. find space-before-digit
sp =: 3 : '''(''(fs y)}y' NB. replace that space with an open paren
spp =: 3 : '''(''(fs y)}y' , ')'"_ NB. wrap numbers with parens

off =: 'turn off';'
sa =: (;:'through,:') rplc~ ] NB. replace 'through' with ',:' 
spp@sa every cutLF ', 'charsub s NB. add closing paren