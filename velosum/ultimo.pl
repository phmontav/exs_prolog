ultimo(X,[X]).
ultimo(X,[_|Y]) :- ultimo(X,Y).

