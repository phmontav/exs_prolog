fatorial(X,Y) :- X = 0, ! , Y = 1.
fatorial(X,Y) :- X2 is X - 1, fatorial(X2,Y2), Y is Y2*X.
%fat(4,Y1)
%fat(3,Y2)
%fat(2,Y3)
%fat(1,Y4)
%Y4 = 1
%Y3 = 2*1 = 2
%Y2 = 3*Y3 = 6
%Y1 = 4*Y2 = 24
%
%
%

