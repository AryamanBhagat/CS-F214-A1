Assumptions

	- Self Loops are not allowed, that is a weight(a, a, 10) is not a valid edge. This is dont without loss of generality since the traversal of any self loop would cause a cycle.
	- A query with the same initial and final points is invalid. That is findpath(a, a, Path, Length), the justification for this behavior is the same as for the previous assumption.

Instructions to run the code

	-open findpath.pl with a text editor
	-copy one of the two test cases and paste them after line 2 in the code.
	-save findpath.pl.
	-run findpath.pl using the command: swipl findpath.pl


Test Cases

	Graph 1

weight(a, b, 3).
weight(b, c, 2).
weight(c, d, 5).
weight(d, e, 7).
weight(c, e, 11).
weight(b, e, 13).
weight(e, f, 17).
weight(c, f, 19).

	Graph 2

weight(a, b, 3).
weight(b, c, 5).
weight(c, a, 7).
