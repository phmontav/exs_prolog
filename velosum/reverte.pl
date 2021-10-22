aux(X,[],R).
aux(X,[X|L],R) :- aux(X,L,[R|X]).


reverte([X|L],R) :- reverte(X,[L|R]).
