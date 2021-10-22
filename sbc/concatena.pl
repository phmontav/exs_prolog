concatena([],X,X).
concatena([H|L1], X, [H|L2])  :- concatena(L1, X, L2),!.
