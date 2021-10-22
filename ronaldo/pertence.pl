pertence(X,[X|_]).
pertence(X,[_|L] ) :- pertence(X,L).
