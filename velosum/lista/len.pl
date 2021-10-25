
len([],0) :- !.
len([H|T],Z) :- len(T,Z1), Z is Z1 + 1.
