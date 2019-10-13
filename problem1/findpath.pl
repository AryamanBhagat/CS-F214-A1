%input for graph here in format weight(node, node, weight)
%weight(a, b, 3).
%weight(b, c, 2).
%weight(c, d, 5).
%weight(d, e, 7).
%weight(c, e, 11).
%weight(b, e, 13).
%weight(e, f, 17).
%weight(c, f, 19).
%weight(a, a, 23).
%weight(d, d, 29).

% ---- edge(A, B, W) ----
%       edge/3 evaluates to true when one of weight(A, B, W) exist in our knowledge base
%       It is necessary since this is an undirected graph.
edge(A, B, W) :-
        (weight(B, A, W); weight(A, B, W)), A \== B.

% ---- path(A, B, Path) ----
%       path/3 evaluates to true when in the given undirected graph, there exists a path to B (Starting at A) such that each node is visited atmost once, and said path is given by the list Path.
%       Specifically, path(A, B, P) is true when a travel started at P can reach B
%
%       Note: The value of the travel predicate is inifferent to where the path begins, so the line 14 ensures that it must start at A.
path(A,B,Path) :-
        travel(A,B,[A],Q),
        reverse(Q,Path).

% ---- travel(A, B, V, P) ----
%       travel/4 evaluates to true when :
%               1. There is an edge between A and B and P is the same as V appended to [B].
%               2. There is a node C which is not B and which is not part of V, such that and edge between A and C exists and a travel(C, B, [C|Visited],Path). That is there is some node C which takes us "closer" to B
%
%       Note: The way the travel/4 predicate is defined, the path can only be cyclic if A and B are same.
travel(A,B,P,[B|P]) :-
        edge(A,B,_).
travel(A,B,Visited,Path) :-
        edge(A,C,_),
        C \== B,
        \+member(C,Visited),
        travel(C,B,[C|Visited],Path).

% ---- distance(P, L) ----
%       distance/2 evaluates to true when:
%               1. Trivially, the list P consists of only two elements and said elements are connected by an edge of weight L
%               2. The length of the path taken if we travel by a given Path P is equal to L, this is calculated by recursively calling distance.
distance([X, Y], W) :-
        edge(X, Y, W).
distance([H1, H2|T], L) :-
        edge(H1, H2, W),
        distance([H2|T], L0),
        L is L0 + W.

% ----findpath(X, Z, P, L) ----
%       findpath/4 evaluates to true when path(X, Z, P) is true. That is, the elements of P form a path from X to Z such that no node (other than the initial and final nodes) maybe repeated.
%       And distance(P, L) evaluates to true.
findpath(X, Z, P, L) :- path(X, Z, P), distance(P, L), X \== Z.
