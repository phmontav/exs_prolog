progenitor(jose,joao).
progenitor(jose,ana).
progenitor(maria,joao).
progenitor(maria,ana).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(joao,mario).
progenitor(helena,carlos).
progenitor(mario,carlos).
sexo(jose,masculino).
sexo(ana,feminino).
sexo(joao,masculino).
sexo(maria,feminino).
sexo(joana,feminino).
sexo(helena,feminino).
sexo(mario,masculino).
sexo(carlos,masculino).

pai(X,Y) :- sexo(X,masculino),progenitor(X,Y).
mae(X,Y) :- sexo(X,feminino),progenitor(X,Y).
irmao(X,Y) :- sexo(X,masculino), progenitor(Z,X),progenitor(Z,Y), not(X=Y).
irma(X,Y) :- sexo(X,feminino), progenitor(Z,X), progenitor(Z,Y),not(X=Y).
avo(X,Y) :-  pai(X,Z), progenitor(Z,Y).
tio(X,Y) :- irmao(X,Z), progenitor(Z,Y).
primo(X,Y) :- progenitor(Z,X), progenitor(W,Y), progenitor(K,Z),progenitor(K,W), not(X=Y).
descendente(X,Y) :- progenitor(Y,X).
descendente(X,Y) :- progenitor(Y,Z), descendente(X,Z).

