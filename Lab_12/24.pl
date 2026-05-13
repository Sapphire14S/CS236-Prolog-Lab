/*
Description : Prints an N x N square of a character.
*/

print_square(N, Char) :-
    N > 0,
    print_rows(N, N, Char).


/*
---------------------------------------------------------
Helper Predicate: print_rows/3
---------------------------------------------------------
*/

print_rows(0, _, _).

print_rows(Rows, N, Char) :-
    Rows > 0,
    print_chars(N, Char),
    nl,
    NextRows is Rows - 1,
    print_rows(NextRows, N, Char).


/*
---------------------------------------------------------
Helper Predicate: print_chars/2
---------------------------------------------------------
*/

print_chars(0, _).

print_chars(N, Char) :-
    N > 0,
    write(Char),
    NextN is N - 1,
    print_chars(NextN, Char).