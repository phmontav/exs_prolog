conta(_,[],0) :- !.
conta(X,[X|L],Z) :- conta(X,L,Z1), Z is Z1 + 1,!.
conta(X,[Y|L],Z) :- not(X = Y), conta(X,L,Z).

membro(X,[X|_]) :- !.
membro(X,[Y|L]) :-  membro(X,L).

p([],[],0,0) :- !.
p([A|AL],[A|BL], X,Y) :- p(AL, BL, X1, Y), X is X1 + 1,!.
p([A|AL], [B|BL], X,Y) :- not(A=B),not(membro(A,BL)), p(AL,BL,X,Y),!.
p([A|AL], [B|BL], X, Y) :- not(A=B), membro(A,BL), p(AL,BL,

