membro(X,[X|_]) :-!.
membro(X,[Y|L]) :- membro(X,L).

intersecao([],_,[]) :- !.
intersecao([H|L], Y, [H|Z]) :- membro(H,Y), intersecao(L,Y,Z),!.
intersecao([H|L], Y, Z) :- not(membro(H,Y)), intersecao(L,Y,Z).

sz([],0) :- !.
sz([H|L],X) :- sz(L,X1), X is X1 + 1.

same_pos([],[],0) :- !.
same_pos([X|L1],[X|L2],Z) :- same_pos(L1,L2,Z1), Z is Z1 + 1,!.
same_pos([X|L1],[Y|L2],Z) :- same_pos(L1,L2,Z).

p(L1,L2,X,Y) :- intersecao(L1,L2,Inter), sz(Inter,S), same_pos(L1,L2,Num), X is Num, Y is S - Num.

% abbcd
% abbdf
% abd
%abbd 4
%3
% abbd 4
% 4 -
%
%
%
