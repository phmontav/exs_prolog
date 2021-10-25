membro(H,[H|_]) :- !.
membro(X,[H|T]) :- membro(X,T).

diferenca([],Y,[]) :- !.
diferenca([H|T],Y,[H|Z]) :- not(membro(H,Y)), diferenca(T,Y,Z),!.
diferenca([H|T],Y,Z) :- membro(H,Y),diferenca(T,Y,Z),!.

