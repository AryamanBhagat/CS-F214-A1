% ---- alternateAndAdd(A, B) -----
%     Used as a helper to the remove_every_other/2 predicate, it returns true when:
%         1.A and B are empty lists.(Base case)
%         2.given that first element of two lists unite and alternateAndAdd/2 is true for the tail of A and the tail of tail of B. 
alternateAndAdd([], []).
alternateAndAdd([A], [A]).
alternateAndAdd([H1, _|T1] , [H1|Ty]):-
    alternateAndAdd(T1, Ty).

% ---- remove_every_other(X,Y) ----
%     remove_every_other/2 evaluates to true if Y and X are lists such that Y is every other element of X starting from the first element.
remove_every_other(X, Y):-
      alternateAndAdd(X, Y).
