membro(X,[X|_]).
membro(X,[Z|Y]):- membro(X,Y).
