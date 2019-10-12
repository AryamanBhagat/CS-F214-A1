% -------- Test Cases ---------
% [1,1,1]
% [1,1,2,1]
% [1,1,1,1]
% [1,1,1,1,2,3]
% [1,1,1,1,2,2,2]
% [1,2,2,2,1,1,1,3]
% ------------------------------

append([],L,L).

append([H|L1],L2,[H|L3]) :- 
  append(L1,L2,L3).

% ---- member(List,A) ---- 
% member/2 evaluates to True when A is a member of List

member([H|_], H).

member([_|T], X) :-
  member(T,X).

% ---- duplicate(List,A) ---- 
% duplicate/2 evaluates to True when A appears at least twice in List

duplicate([H|T], H) :- 
  member(T,H).

duplicate([_|T], X) :-
  duplicate(T,X).

% ---- is_triplicate(List,A) ----
% is_triplicate/2 evaluates to True if A appears at least thrice in List and subsequently prints A

is_triplicate([H|T],U) :- 
  \+member(H,U),
  duplicate(T, H),
  write(H),
  append(H,U,X);
  is_triplicate(T,X).

% ---- has_triplicate(List) ----
% wrappper function to is_triplicate/2 which prints all elements of List that appear at least thrice within it.
has_triplicate(X) :- 
  is_triplicate(X,[]).