parent(marian,michael).
male(michael).
female(oliwia).
parent(james,marian).
parent(jamesSr, james).
female(marian).

grandmother(X,Y) :- parent(Z,Y), parent(X,Z), female(X).


sibling(X,Y) :- parent(Z,X), parent(Z,Y).
aunt(X,Y) :- parent(Z,Y), sibling(Z, X) , female(X).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).


road(naas,newbridge,5).
road(newbridge , cork, 6).
road(cork,newbridge,13).
road(cork, galway, 11).

routen(X,Y,N) :- road(X,Y,N).


routen(X,Y,N) :- road(X,Z,N1), routen(Z,Y,N2), N is N1 + N2.

toofar(X,Y) :- routen(X,Y,N), N>6.

sumOfElem([H| [] ], H ).
sumOfElem([H | T], Sum ) :- sumOfElem(T, Sum1), Sum is H + Sum1.


findMax([H | T] , Max) :- findMaxHelper(T, H, Max).

findMaxHelper([H | T], MaxSoFar, Max) :-
    H > MaxSoFar ,
    write(H),
    H >0,
    findMaxHelper(T, H, Max).

findMaxHelper([H | T], MaxSoFar, Max) :-
    H =< MaxSoFar ,
    write(test),
    H > 0,
    findMaxHelper(T, MaxSoFar, Max).

findMaxHelper([],Max,Max).

split([H | T] , Even , Odd) :- even(H), append(h,Even),split(T,Even,Odd).

split([H | T] , Even , Odd) :- odd(H), append(h,Odd), split(T,Even,Odd).

split([], Even, Odd) :-
    ascending_sort(),
    validate(Even) ,validate(Odd).

validate([H1,H2 | T]) :-  h1 == h2.
validate([])

