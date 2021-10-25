append1([],Y,Y).
append1([X|Xs] ,Y ,[X|Z]) :- append1(Xs , Y, Z).
append2([],Y,Y).
append2([X|XS],Y,Z) :- append2(XS,Y,[X|Z]).
