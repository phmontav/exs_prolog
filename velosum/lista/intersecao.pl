membro(H,[H|_]) :- !.
membro(X,[H|T]) :- membro(X,T).

intersecao([],Y,[]) :- !.
intersecao([H|T],Y,[H|Z]) :- membro(H,Y), intersecao(T,Y,Z),!.
intersecao([H|T], Y, Z) :- not(membro(H,Y)), intersecao(T,Y,Z),!.membro


