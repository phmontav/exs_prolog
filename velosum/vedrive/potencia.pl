potencia(X,0,1) :- !.
potencia(X,Y,Z) :- Y2 is Y - 1, potencia(X,Y2,Z2), Z is Z2*X.
