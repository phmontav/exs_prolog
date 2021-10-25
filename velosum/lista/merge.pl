


merge([],L,L) :- !.
merge(L,[],L) :- !.
merge([H1|L1],[H2|L2],[H2|Z]) :- H1 > H2, merge([H1|L1],L2,Z),!.
merge([H1|L1],[H2|L2],[H1|Z]) :- merge(L1,[H2|L2],Z),!.





