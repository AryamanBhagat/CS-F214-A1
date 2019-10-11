% ---- remove_nth(N,X,Y) ----

% remove_nth/3 removes the nth element of X and stores the modified List in Y.
% returns no if N > length of X, else would return the modified list 

% Example Usage:

% Ex1:
%	?- remove_nth(3,[1,2,3,4,5,6],Y)
%	Y = [1,2,4,5,6]

% Ex2:
%	?- remove_nth(8,[1,2,3,4,5,6],Y)
%	no


remove_nth(1,[_|T],T).

remove_nth(N, [H|T1], [H|T2]) :-
  N > 1,
  Z is N-1,
  remove_nth(Z,T1,T2).