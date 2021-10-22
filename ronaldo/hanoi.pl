hanoi(N) :- move(N,esquerda,centro,direita). % place obj aux
move(0,_,_,_) :- !.
move(N,E,C,D) :- N1 is N - 1, move(N1,E,D,C),inform(E,C),move(N1,D,C,E).
 inform(X,Y) :- write(' mover um disco do prato '), write(X), write('para o prato '), write(Y),nl.

