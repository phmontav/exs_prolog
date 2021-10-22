append1([],Y,Y).
append1([X|Xs] ,Y ,[X|Z]) :- append1(Xs , Y, Z).
