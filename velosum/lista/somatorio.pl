somatorio([],0) :- !.
somatorio([H|T], S)ps :- somatorio(T,S1), S is S1 + H.
