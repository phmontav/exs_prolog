subconjunto([A|X], Y) :- member(A,Y), subconjunto(X,Y).
subconjunto([],Y).
