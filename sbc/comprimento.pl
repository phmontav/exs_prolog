comprimento(0,[]).
comprimento(X,[H|L1]) :-  comprimento(Y,L1), X is Y+1.
