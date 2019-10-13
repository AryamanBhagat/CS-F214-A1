% ---- remove_nth(N,X,Y) ----
% 		remove_nth/3 removes the nth element of X and stores the modified List in Y.
% 		returns no if N > length of X, else would return the modified list 
remove_nth(1,[_|T],T).
remove_nth(N, [H|T1], [H|T2]) :-
  		N > 1,
  		Z is N-1,
  		remove_nth(Z,T1,T2).