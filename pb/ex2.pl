decomp([H|T], H, T).

concat([], L, L1) :- not(is_list(L)), L1 = [L], !.
concat([], L, L1) :- L1 = L, !.
concat([H|L1], L2, [H|L3]) :- concat(L1, L2, L3).

reverse([],[]).
reverse([H | L], X) :- reverse(L, M), concat(M, [H], X).
% [a,b,c]
% H = a, T = [b,c], reverse([b,c], M), concat([c,b], [a], X).
% H = b, T = [c], reverse([c], M), concat(M, [b], X).