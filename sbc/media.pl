comprimento(0,[]).
comprimento(X,[H|L]) :- comprimento(Y,L), X is Y + 1.

media1(0,[]).

media1(X,[H|L]) :- media1(Y,L),!, X is  (Y + H).
media(X,L) :- media1(Y,L), comprimento(C,L), X is Y/C.

