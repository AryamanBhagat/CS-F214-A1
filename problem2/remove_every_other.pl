alternateAndAdd([], []).
alternateAndAdd([A], [A]).
alternateAndAdd([H1, _|T1] , [H1|Ty]):-
  alternateAndAdd(T1, Ty).

remove_every_other(X, Y):-
  alternateAndAdd(X, Y).
