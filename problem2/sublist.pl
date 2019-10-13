% ---- sublist(A,X) ---- %
%   sublist/2 returns yes if A is a sublist of X
sublist([], X) :-
        is_list(X).
sublist([HA|TA], [HX|TX]) :- 
        sublist_([HA|TA], TX); (sublist_(TA, TX), HA == HX).