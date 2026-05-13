/*
Description : Finds the length of a list without using
              built-in length/2.
*/

mylength([], 0).

mylength([_ | Tail], Length) :-
    mylength(Tail, TailLength),
    Length is TailLength + 1.