perm([],[]) :- !.
perm([H|T],S) :- perm(T,P), append(X,Y,P),append(X,[H|Y],S).
