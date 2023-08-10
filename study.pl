findElement(X,[X | _]).
findElement(X,[_ | Y]) :- findElement(X,Y).

