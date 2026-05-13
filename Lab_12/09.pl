/*
Description : Replaces all occurrences of an element in a list.
*/

replace([], _, _, []).

replace([Old | Tail], Old, New, [New | ResultTail]) :-
    replace(Tail, Old, New, ResultTail).

replace([Head | Tail], Old, New, [Head | ResultTail]) :-
    Head \= Old,
    replace(Tail, Old, New, ResultTail).