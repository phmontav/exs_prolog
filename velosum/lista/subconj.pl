membro(H,[H|_]) :- !.
membro(X,[H|T]) :- membro(X,T).

subconj([],Y).
subconj([H|T],Y) :- membro(H,Y) , subconj(T,Y).
