pos([H|_],0,H) :-!.
pos([H|T],N,X) :- N1 is N - 1, pos(T,N1,X).somato
