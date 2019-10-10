% Same as graph.pl but with weighted edges

node(a).

node(A) :- weight(A, B, W); weight(B, A, W).
weight(A, B, W) :- weight(B, A, W).
weight(A, A, 0) :- weight(A, B, W); weight(B, A, W); node(A).

% ----predicate to find path---- %
<<<<<<< HEAD
findpath(X, X, [X], 0).
=======
findpath(X, X, [X], 0).                                         %only made to handle Trivial path where end and start are the same

findpath(X, Z, P, L) :- weight(X, Z, W), append([X], [Z], P), L is W, X \== Z.  
findpath(X, Z, P, L) :- findpath(X, Y, P0, L0), weight(Y, Z, W), append(P0, [Z], P), L is W + L0, not(member(Z, P0)).

>>>>>>> 7caf24c15faffec49a686a03d7b11cfc66f1a09c

findpath(X, Z, P, L) :-
  weight(X, Z, W),
  append([X], [Z], P),
  L is W.

findpath(X, Z, P, L) :-
  findpath(X, Y, P0, L0),
  weight(Y, Z, W),
  append(P0, [Z], P),
  L is W + L0.
