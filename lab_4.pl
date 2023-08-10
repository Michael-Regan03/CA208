fib(0,1).
fib(1, 1).

fib(X,Y) :- X1 is X-1, X2 is X-2, fib(X1,N1),fib(X2, N2), Y is N1 + N2.

:- op(500, xfy, tA).

Base/Height tA Area :- Area is 0.5*Base*Height.

:- op(500, xfy, math).

M/mat math Height :- Height is M*mat.

