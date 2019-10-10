% -------- Test Cases ---------
% [1,1,1]
% [1,1,2,1]
% [1,1,1,1]
% [1,1,1,1,2,3]
% [1,1,1,1,2,2,2]
% [1,2,2,2,1,1,1,3]
% ------------------------------

member([H|_], H).

member([_|T], X) :-
  member(T,X).

duplicate([H|T], H) :- 
  member(T,H).

duplicate([_|T], X) :-
  duplicate(T,X).

% loop([H|T]) :-
%   member(T,H), write(H) ;
%   loop(T).

loop([H|T]) :-
  member(T,H) ;
  loop(T).

is_triplicate([H|T]) :- 
  duplicate(T, H), write(H) ;
  is_triplicate(T).