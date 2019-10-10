% Same as graph.pl but with weighted edges 

weight(a,b,10).
weight(b,c,10).
weight(c,d,10).
weight(d,a,10).
weight(A, B, W) :- weight(B, A, W)


% ----predicate to find path---- %
findpath(X, X, [X], 0).                                         %only made to handle Trivial path where end and start are the same

findpath(X, Z, P, L) :- weight(X, Z, W), append([X], [Z], P), L is W, X \== Z.  
findpath(X, Z, P, L) :- findpath(X, Y, P0, L0), weight(Y, Z, W), append(P0, [Z], P), L is W + L0, not(member(Z, P0)).


