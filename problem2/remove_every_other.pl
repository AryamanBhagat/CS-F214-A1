


Alternate([H2|[H1|T1]] , Y):-
  Append(H2, Y, Y).


remove_every_other(X, Y):
  Alternate(X, Y).
