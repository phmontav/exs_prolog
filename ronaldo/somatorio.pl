somatorio([],0).
somatorio([X|L],S) :-  somatorio(L,S2), S is S2 + X.
