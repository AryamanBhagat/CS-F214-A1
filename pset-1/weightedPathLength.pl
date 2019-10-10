% Same as graph.pl but with weighted edges 

edge(a,b,10).
edge(b,c,10).
edge(c,d,10).
edge(d,a.10).

% ----predicate to check if 2 nodes are connected---- %
% connected(X,Y) :-
%         edge(X,Y) ;
%         (edge(X,Z) , connected(Z,Y)).


% ----predicate to calculate distance---- %
distance(X,X,0,0).

distance(X,Y,SoFar,Distance) :-
        edge(X,Y,Weight),
        Distance is SoFar + Weight.

distance(X,Y,SoFar,Distance) :-
        edge(X,Z,Weight),
        DistanceToZ is SoFar + Weight,
        distance(Z,Y,DistanceToZ,Distance).


% ----wrapper predicate---- %
distance(X,Y,Distance) :- distance(X,Y,0,Distance).