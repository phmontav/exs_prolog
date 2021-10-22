intersecao([],Y,[]).
intersecao([H|T],Y,[H|L]) :- member(H,Y),!, intersecao(T,Y,L).
intersecao([H|T],Y,Z) :- intersecao(T,Y,Z).

