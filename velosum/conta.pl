conta(0,_,[]).
conta(N,A,[A|Y]) :- conta(N2,A,Y), N is N2+1,!.
conta(N,A,[X|Y]) :- conta(N,A,Y).

%conta(X,a,[a,b,c])
%conta(N2,a,[b,a])
%N2 is N3
%conta(N3,a,[b,c])
%N3 is N4
%conta(N4,a,[c])
%N4 is N5
%conta(N5,a,[]).
%N5 is 0
%N4 is 0
%N3 is 0
%N2 is 0
%N is 0+1
%N is 1
%
%
%
%
%
