uniao([],Y,Y).
uniao([H|L],Y, Z) :- member(H,Y),!, uniao(L,Y,Z).
uniao([H|T], Y, [H|Z]) :- uniao(T,Y,Z).
