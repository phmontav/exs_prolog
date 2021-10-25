membro(H,[H|_]).
membro(X,[H|T]) :- membro(X,T).

unitario([],[]) :- !.
unitario([H|T],Z) :- unitario(T,Z), member(H,Z),!.
unitario([H|T],[H|Z]) :- unitario(T,Z),not(member(H,Z)),!.

uniao([],Y,Y) :- !.
uniao([H|T], Y, [H|Z]) :- not(membro(H,Y)), uniao(T,Y,Z),!.
uniao([H|T], Y, Z) :- membro(H,Y), uniao(T,Y,Z),!.

