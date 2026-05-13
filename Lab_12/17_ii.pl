/*
Description : Adds two unary numbers using recursion.
*/

plus([], UnaryNum, UnaryNum).

plus([x | Tail], UnaryNum, [x | Sum]) :-
    plus(Tail, UnaryNum, Sum).