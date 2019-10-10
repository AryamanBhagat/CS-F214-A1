% Same as graph.pl but with weighted edges 

weight(a,b,10).
weight(b,c,10).
weight(c,d,10).
weight(d,a.10).

% ----predicate to check if 2 nodes are connected---- %
% connected(X,Y) :-
%         weight(X,Y) ;
%         (weight(X,Z) , connected(Z,Y)).


% ----predicate to calculate distance---- %
distance(X,X,0,0).

distance(X,Y,SoFar,Distance) :-
        weight(X,Y,Weight),
        Distance is SoFar + Weight.

distance(X,Y,SoFar,Distance) :-
        weight(X,Z,Weight),
        DistanceToZ is SoFar + Weight,
        distance(Z,Y,DistanceToZ,Distance).


% ----wrapper predicate---- %
distance(X,Y,Distance) :- distance(X,Y,0,Distance).