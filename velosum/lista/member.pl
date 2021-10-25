member(H,[H|_]) :- !.
member(X,[H|T]) :- member(X,T).
