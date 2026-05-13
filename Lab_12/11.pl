/*
Description : Finds the element at the Nth position
              in a list.
*/

element_at([Head | _], 1, Head).

element_at([_ | Tail], N, Element) :-
    N > 1,
    NextN is N - 1,
    element_at(Tail, NextN, Element).