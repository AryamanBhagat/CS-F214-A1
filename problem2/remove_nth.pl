remove([_|T],1,T).

remove([H|T1], N, [H|T2]) :-
  N > 1,
  Z is N-1,
  remove(T1,Z,T2).