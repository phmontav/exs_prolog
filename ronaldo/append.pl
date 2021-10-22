append([], L, L).
append([X|L1],Y,[X|L]) :- append(L1,Y,L).
