% ---- remove_every_other(X,Y) ----

% remove_every_other/2 stores in Y alternate elements of X with a common first element.

% Example Usage:

% Ex1:
% ?- remove_every_other([1,2,3,4,5,6],Y)
% Y = [1,3,5]

% Ex2:
% ?- remove_every_other([],Y)
% Y = []

% Ex3:
% ?- remove_every_other([1],Y)
% Y = [1]

alternateAndAdd([], []).
alternateAndAdd([A], [A]).
alternateAndAdd([H1, _|T1] , [H1|Ty]):-
  alternateAndAdd(T1, Ty).

remove_every_other(X, Y):-
  alternateAndAdd(X, Y).
