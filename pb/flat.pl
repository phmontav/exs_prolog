% [ [a], [ [b, [c] ] ], [[d, e]] ] [b,c]
is_list(A) :- var(A), !, fail.
is_list([]).
is_list([_|L]) :- is_list(L).

decomp([H | L], H, L).

concat([], L, L).
concat(A, B, L) :- not(is_list(A)), concat([A], B, L), !.
concat(A, B, L) :- not(is_list(B)), concat(A, [B], L), !.
concat([H | L1], L2, [H | L3]) :- concat(L1, L2, L3).

flat(A, X) :- not(is_list(A)), X = A, !.
flat([], []) :- !.
flat(A, X) :- is_list(A), decomp(A, Head, Tail), flat(Head, X1), flat(Tail, X2), concat(X1, X2, X), !.