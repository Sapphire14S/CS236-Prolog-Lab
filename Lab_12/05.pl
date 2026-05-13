/*
Description : Prolog predicate to analyze a list.
*/

analyse_list([]) :-
    write('This is an empty list.'),
    nl.

analyse_list([Head | Tail]) :-
    write('Head: '),
    write(Head),
    nl,
    write('Tail: '),
    write(Tail),
    nl.