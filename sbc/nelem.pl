%nelem(N,[H|L],X) :- N is 1 ,!, X is H.
nelem( 1, [H|_],H) :- !.
nelem(N,[H|L],X) :- Y is N-1, nelem(Y,L,X).
