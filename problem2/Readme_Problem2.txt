Assumptions

	has_triplicate()
		-has_triplicate/1 can only be called on literals, since it depends on the execution tree and not the value of the predicate itself(which is always flase). This is done because it's arity needs to be 1.

Instructions to run code
	-simply run the different files using swipl

Testcases

	has_triplicate()
		-has_triplicate([1,1,1]).
		-has_triplicate([1,2,2,2,1,1,1,3]).

	remove_nth()
		-remove_nth(3,[1,2,3,4,5,6],Y).
		-remove_nth(8,[1,2,3,4,5,6],Y).

	sublist()
		-sublist([3, 5, 7, 9], [2, 3, 4, 5, 6, 7, 9]).
		-sublist([1,2,3], [1,1,1,2,2,2,3,3,3]).

	remove_every_other()
		-remove_every_other([1,2,3,4,5,6],Y).
		-remove_every_other([1],Y).
		-remove_every_other([],Y).
