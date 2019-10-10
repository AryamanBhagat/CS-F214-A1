edge(a,b).
edge(b,c).
edge(c,d).
edge(d,a).

% ----predicate to check if 2 nodes are connected---- %
isConnected(X,Y) :-
        edge(X,Y) ;
        (edge(X,Z) , isConnected(Z,Y)).


% ----predicate to calculate distance---- %
distance(X, Y, SoFar, Distance) :-
        isSame(X, Y),
        Distance is SoFar + 0.0.

distance(X,Y,SoFar,Distance) :-
        edge(X,Y),
        Distance is SoFar + 1.0.

distance(X,Y,SoFar,Distance) :-
        edge(X,Z),
        DistanceToZ is SoFar + 1,
        distance(Z,Y,DistanceToZ,Distance).

isSame(X, Y) :-
        X == Y.

% ----wrapper predicate---- %
distance(X,Y,Distance) :- distance(X,Y,0,Distance).