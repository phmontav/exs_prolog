membro(X,[X|_]).
membro(X,[Y|L]) :- membro(X,L).

diff([],Y,[]) :- !.
diff([X|XS], Y, [X|Z]) :- not(membro(X,Y)),diff(XS, Y, Z),!.
diff([X|XS], Y, Z) :- diff(XS,Y,Z).

%pm(carlos,X)
%X = joao
%
%
%
%
%
%
%
%
%
%
