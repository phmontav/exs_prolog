len([], 0).
len([_ | T], N) :- len(T, N1), N is N1 + 1.

find([Head | _], 1, Head) :- !.
find([Head | Tail], K, Elm) :- K > 1, K1 is K - 1, find(Tail, K1, Elm).
% [1,2,3], 3 -> H = 1, T = [2,3], CurrLen = 2,

beforelast(L, X) :- len(L, Len), L1 is Len - 1, find(L, L1, X).
