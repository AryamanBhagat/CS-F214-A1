append([],L,L).

append([H|L1],L2,[H|L3]) :-
  append(L1,L2,L3).

prefix(P,L) :- append(P,_,L).
suffix(P,L) :- append(_,P,L).
