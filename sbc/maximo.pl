%maximo(0,[]).
%maximo(X,[H|L1]) :- maximo(Y,L1), H > Y,!, X is H .
%maximo(X,[H|L1]) :- maximo(Y,L1),!, X is Y.

%sbc
maximo(X,[X]).
maximo(X,[Y|R]) :-  maximo(X,R), X > Y,!.
maximo(Y,[Y|_]).

% maximo(X,[2,1])
% maximo(X,[1])
% maximo(1,[1]), 1 > 2 fail
% maximo(X,[]), fail
% maximo(1,[1]), i > 2 fail
% maximo(2,[2,1]).
%
%
%
%
%
%
%
