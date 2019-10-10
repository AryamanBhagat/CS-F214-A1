member([H|_], H).

member([_|T], X) :-
  member(T,X).

duplicate([H|T], H) :- 
  member(T,H).

duplicate([_|T], X) :-
  duplicate(T,X).

loop([H|T]) :-
  member(T,H), write(H) ;
  loop(T).