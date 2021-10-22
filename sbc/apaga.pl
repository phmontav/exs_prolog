%apaga(X,[], [] ).
%apaga(X,[X|L1],L2) :- apaga(X,L1,L2),!.
%apaga(X,[H|L1],[H|L2]) :- apaga(X,L1,L2).

apaga(X,[X|R],R).
apaga(X,[Y|R] ,[Y|R2]) :- apaga(X,R,R2).
