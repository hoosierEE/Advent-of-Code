NB. the following shamelessly stolen from Pascal Jasmin's wiki entry:
NB. http://code.jsoftware.com/wiki/User:Pascal_Jasmin/SHA_1(2c20)2_and_MD5_for_windows

NB. OSX-only version for brevity
sslMD5=:'/usr/lib/libssl.dylib  MD5 > + x *c x *c'&cd
hexhash =: ( [: ,@:hfd a.i.])@: NB. helper adverb to display in hex
md5 =: 3 : 0
    sslMD5 (y);(# , y);md=. 16#' '
    md
)

input =: 'ckczppom'

NB. here's my code
miner =: 4 :0
    num=:1
    nzeros =: (x#'0'),'+' NB. at least x zeros
    while. 0~:{.,nzeros rxmatch md5 hexhash y,":num do. num=:>:num end.
    num NB. return value
)

Note 'run these in console to get the output'
    5 miner input NB. part 1
    6 miner input NB. part 2
)
