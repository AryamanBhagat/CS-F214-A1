% -------- Sublist Definition --------
% A sublist of List L is the original list,
% in the same order but with no/some elements removed.
% Example: 
% [2,3,5] is a sublist of [1,2,3,4,5,6] but [3,4,2] is not.
% ------------------------------------


% ---- append(L1,L2,L3) ---- %
% append/3 appends elements of L2 to L1 in the same order.
% Example Usage:
% ?- append([1,2,3],[a,b,c],L)
% L = [1,2,3,a,b,c]
% yes

append([],L,L).

append([H|L1],L2,[H|L3]) :- 
  append(L1,L2,L3).

% ---- member(L,X) ---- %
% member/2 returns yes if X is an element of L

member([H|_], H).

member([_|T], X) :-
  member(T,X).

% ---- appendEvery(X,L1,L2) ---- %
% appendEvery/3 appends to X, every element of L1 and stores the corresponding list in L2
% Example Usage:
% ?- appendEvery(a,[1,2,3],L)
% L = [[a,1],[a,2],[a,3]]
% yes

appendEvery(X,[],[[X]]).

appendEvery(X,[H|T],L) :-
  append([X],H,L2),
  appendEvery(X,T,L3),
  append([L2],L3,L).

% ---- listOfSublists(L1,L2) ---- %
% listOfSublists/2 stores in L2 the list of all possible sublists of L1
% Example Usage:
% ?- listOfSublists([1,2,3,4],L)
% L = [[],[1],[2],[3],[4],[1,2],[1,3],[1,4],[2,3],[2,4],[3,4],[1,2,3],[1,2,4],[1,3,4],[2,3,4],[1,2,3,4]]
% yes

listOfSublists([],[]).

listOfSublists([H|T],L) :-
  listOfSublists(T,L2),
  appendEvery(H,L2,L3),
  append(L2,L3,L4),
  append([[]],L4,L).

% ---- sublist(A,X) ---- %
% sublist/2 returns yes if A is a sublist of X

sublist(A,X) :-
  listOfSublists(X,L),
  member(L,A).
