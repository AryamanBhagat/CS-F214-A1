# Logic in Computer Science (CS F214) 
## Assignment-1 (Fall Semester '19)

*Problem 1:*
Given a weighted undirected graph G = (V, E). The weight on an edge (v1, v2) represents the distance between the vertices v1 and v2 {vi V; and (vi, vj) E}. Given a set of weights of edges in the form of prolog clauses:
```
weight(p, q, 20).
weight(q, r, 5).
```
Write a prolog program to check if there exists a path between two given vertices. Print the path and its length, if it exists. For example:
`?- findPath(p, r, Path, L).`
the prolog interpreter should print
```
Path = [p, q, r]
L = 25
```
Note that the user should print an alternative path if it exists on each press of a semi colon and print no if no path exists.
Your program should avoid traversing through cycles, if any.  

*Problem 2:*
Write a Prolog predicate for each of the following operations on a list:
  - `sublist(X,Y)`: true if list X is a sublist of list Y. A sublist is the original list, in the same order, but with no/some elements removed. 
  - `has_triplicate(X)`: true if list X contains at least three copies of an element. It also prints the element which is triplicated.
  - `remove_nth(N,X,Y)`: prints list Y which is the list X with its Nth element removed. If X does not have an Nth element then the predicate should fail. Assume that N > 0.
  - `remove_every_other(X,Y)`: prints a list Y which is the list X with every other element removed (the two lists should have the same first element). 
  
Note: Each predicate should be able to print the alternative solutions if they exist.

## Contributors:
  - [Aryaman Bhagat](https://github.com/AryamanBhagat) (2018A7PS0248P)
  - [Harsh Sulakhe](https://github.com/HarshSulakhe) (2018A7PS0186P)
  - [Pranav Gupta](https://github.com/pranagupt) (2018A7PS0190P)
  - [Shreyans Jain](https://github.com/jshreyans) (2018A7PS0253P)
  
