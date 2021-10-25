rev([], []).
rev([H1|L1], S) :- rev(L1, M), concat(M, [H1], S).

sumList([], 0) :- !.
sumList([H1 | L1], S) :- sumList(L1, S1), S is S1 + H1, !.

ssum([], []).
ssum([H1 | L1], [HS1 | HL1]) :- sumList(L1, ANS), HS1 is ANS + H1, ssum(L1, HL1).

psum(L1, L2) :- reverse(L1, R1), ssum(R1, R2), reverse(R2, L2).

mergeLists([], L, L) :- !.
mergeLists(L, [], L) :- !.
mergeLists([H1 | L1], [H2 | L2], [H1 | T]) :- H1 =< H2, mergeLists(L1, [H2 | L2], T), !.
mergeLists([H1 | L1], [H2 | L2], [H2 | T]) :- H1 > H2, mergeLists([H1 | L1], L2, T), !.

perm([],[]).
perm([H|T],S) :- perm(T,P),append(X,Y,P),append(X,[H|Y],S).

% [1,2,3], H = 1, T = [2,3],