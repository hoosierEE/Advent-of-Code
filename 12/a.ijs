NB. first, erase all the objects containing :"red" using vim.
NB. Open ./in2.txt and enter the following macro:
NB. qanda{q300@@
+/".every'-?[[:digit:]]+'rxall 1!:1<'in2.txt'
