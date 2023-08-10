class(0, zero).
class(X,postive) :- X > 0, !.
class(X,negative) :- X < 0, !.


%split([],[],[]).
%split([N | T],[N | Pos],Neg) :- class(N,postive), split(T, Pos,Neg).
%split([N | T],Pos,[N | Neg]) :- class(N,negative), split(T, Pos,Neg).


split([],[],[]).

split([X|T], [X|Pos], Neg) :- X >= 0, !, split(T,Pos,Neg).

split([X|T], Pos, [X|Neg]) :- !, split(T,Pos,Neg).

fib(0,1).
fib(1, 1).

fib(X,Y) :- X1 is X-1, X2 is X-2, fib(X1,N1),fib(X2, N2), Y is N1 + N2,!.
























