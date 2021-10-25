membro(H,[H|_]) :-! .
membro(X,[H|T]) :- membro(X,T).

seminter([],Y) :-!.
seminter([H|T],Y) :- not(membro(H,Y)), seminter(T,Y).

