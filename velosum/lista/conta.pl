conta(X,[],0) :- !.
conta(X,[X|T],Z) :- conta(X,T,Z1), Z is Z1+1,!.
conta(X,[H|T],Z) :- conta(X,T,Z),!.
