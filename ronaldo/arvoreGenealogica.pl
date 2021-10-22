pai(jose,joao).
pai(jose,maria).
pai(joao,pedro).
pai(joao,ana).
pai(jose,manoel).
pai(pedro,paulo).
filho(X,Y) :- pai(Y,X).
irmaos(X,Y) :- pai(Z,X),pai(Z,Y), not(X = Y).
tio(X,Y) :- irmaos(X,Z), pai(Z,Y).
sobrinho(X,Y) :- tio(Y,X).
avo(X,Y) :- pai(X,Z), pai(Z,Y).
neto(X,Y) :- avo(Y,X).
ancestral(X,Y) :- pai(X,Y);tio(X,Y);avo(X,Y).
ancestral(X,Y) :- ancestral(X,Z), pai(Z,Y),not(X = Z).
descendente(X,Y) :- filho(X,Y); sobrinho(X,Y);neto(X,Y).
