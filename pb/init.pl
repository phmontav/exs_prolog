% problema 1 letras iguais na msm posicao

exactmatch([],[],0) :- !.
exactmatch([A | L1], [A | L2], X) :- exactmatch(L1, L2, X1), X is X1 + 1, !.
exactmatch([A | L1], [B | L2], X) :- exactmatch(L1, L2, X), !.

ocurrence(A, [], 0) :- !.
ocurrence(A, [A | L], X) :- ocurrence(A, L, X1), X is X1 + 1, !.
ocurrence(A, [B | L], X) :- ocurrence(A, L, X), !.

