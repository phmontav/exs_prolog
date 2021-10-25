concat([],X,X) :- !.
concat([H|T],Y,[H|Z]) :- concat(T,Y,Z).

reverte([],[]) :- !.
reverte([H|T],R) :-  reverte(T,Rev), concat(Rev,[H],R).
