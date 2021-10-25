father(a,b).  % 1
father(a,c).  % 2
father(b,d).  % 3
father(b,e).  % 4
father(c,f).  % 5

brother(X,Y) :- father(Z,X), father(Z,Y), not(X=Y).
cousin(X,Y) :- father(Z1,X), father(Z2,Y), brother(Z1,Z2).
grandson(X,Y) :- father(X,Z), father(Z,Y).

descendent(X,Y) :- father(Y,X), !.
descendent(X,Y) :- not(father(Y,X)), father(Z,X), descendent(Z,Y), !.
%        ale,rez