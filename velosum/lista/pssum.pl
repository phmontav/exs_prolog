sum_lista([],0) :- !.
sum_lista([H|T],X) :- sum_lista(T,Z), X is Z + H.

concat([],Y,Y) :-!.
concat([H|T],Y,X) :- member(H,Y), concat(T,Y,X),!.
concat([H|T],Y,[H|X]) :- not(member(H,Y)), concat(T,Y,X).

reverte([],[]) :- !.
reverte([H|T],R) :- reverte(T,Z), concat(Z,[H],R).

pssum(L,X) :- reverte(L,L2), pssumaux(L2,Z), reverte(Z,X).
pssumaux([],[]) :-!.
pssumaux([H|T], [X|T2]) :- pssumaux(T,T2),sum_lista([H|T],X).

% 1 2 3 4
% 4 3 2 1
% 3 2 1
% 2 1
% 1
% 1
% 3
% 7[|a|,b|,c|,a]
%
