subset([], L) :- !.
subset([H1 | T1], L2) :- member(H1, L2), subset(T1, L2), !.

disjoint([], L) :- !.
disjoint([H1 | T1], L2) :- not(member(H1, L2)), disjoint(T1, L2), !.


is_list(X) :- var(X), !, fail.
is_list([]).
is_list([_|T]) :- is_list(T).


concat([], L, L1) :- not(is_list(L)), L1 = [L].
concat([], L, L) :- is_list(L).
concat([H|L1], L2, [H|L3]) :- concat(L1, L2, L3).

union([], L2, L2) :- !.
union([H1 | T1], L2, [H1|S]) :- not(member(H1, L2)), union(T1, L2, S), !.
union([H1 | T1], L2, S) :- member(H1, L2), union(T1, L2, S), !.

unique([], []) :- !.
unique([H1|L1], [H1|L2]) :- unique(L1, L2), not(member(H1, L2)), !.
unique([H1|L1], L2) :- unique(L1, L2), member(H1, L2), !.

intersection([], L2, []) :- !.
intersection([H1|L1], L2, [H1|ANS]) :- member(H1, L2), intersection(L1, L2, ANS), !.
intersection([H1|L1], L2, ANS) :- not(member(H1, L2)), intersection(L1, L2, ANS), !.

inter(L1, L2, L3) :- unique(L1, X1), intersection(X1, L2, L3).

diff([], L2, []) :- !.
diff([H1 | L1], L2, [H1 | S]) :- not(member(H1, L2)), diff(L1, L2, S), !.
diff([H1 | L1], L2, S) :- diff(L1, L2, S), !.