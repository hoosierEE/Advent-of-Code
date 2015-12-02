# [Advent-of-Code](http://adventofcode.com/)
This is how I get into the holiday spirit.

# Spoliers ahead!

## Solutions
   
> In the following, `S` is the input string in an explicitly-defined J noun, i.e:
> 
>     S =: 0 : 0
>     1x3x3
>     2x5x10
>     NB. and so on...
>     )

1a:

    +/<:') ('i. S

1b:

    >:I._1=+/\<:') ('i. S

2a:

    +/({."1+([:+/"1@:+:]))(2*/\(],{.))"1/:~"1]".&>'x'cut&>cutLF S

2b:

    +/((+:@+/@}:)+(*/))"1/:~"1]".&>'x'cut&>cutLF S

