/*
Description : Finds the last element of a list using
              append/3.
*/

last2(List, Element) :-
    append(_, [Element], List).