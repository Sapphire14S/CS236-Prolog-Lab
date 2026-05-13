/*
Description : Finds the last element of a list using recursion.
*/

last1([Element], Element).

last1([_ | Tail], Element) :-
    last1(Tail, Element).