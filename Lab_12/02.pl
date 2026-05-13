/*
Description : Prolog predicate to find the maximum of two numbers.
*/

/*
PREDICATE DEFINITION

max(X, Y, Max)
----------------
Unifies Max with the larger of X and Y.

Logic:
1. If X >= Y, then Max = X
2. Otherwise, Max = Y
*/


/* Case 1: X is greater than or equal to Y */
max(X, Y, X) :-
    X >= Y.


/* Case 2: Y is greater than X */
max(X, Y, Y) :-
    Y > X.
