
e_lista(X) :- var(X),!,fail.
e_lista([]).
e_lista([_|T]) :- e_lista(T).

append1([],L2,L2) :- !.
append1([H|T],L2,[H|Z]) :- append1(T,L2,Z).

flat(X, [X|[]]) :- not(e_lista(X)),!.
flat([],[]).
flat([H|T], Ans) :-  flat(H,Ans1),flat(T,Ans2), append1(Ans1,Ans2,L),
    Ans = L,!.


%! [a]
%H = a
%T = []
%[a
