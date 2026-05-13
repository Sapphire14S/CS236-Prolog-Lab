/*
Description : Splits a list into two lists based on
              a threshold value.
*/

split_list(_, [], [], []).

split_list(Threshold, [Head | Tail], [Head | LessList], GEList) :-
    Head < Threshold,
    split_list(Threshold, Tail, LessList, GEList).

split_list(Threshold, [Head | Tail], LessList, [Head | GEList]) :-
    Head >= Threshold,
    split_list(Threshold, Tail, LessList, GEList).