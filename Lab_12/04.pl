/*
PRIME NUMBER PREDICATE
*/

is_prime(2).

is_prime(N) :-
    integer(N),
    N > 2,
    N mod 2 =\= 0,
    \+ has_divisor(N, 3).


/*
---------------------------------------------------------
Helper Predicate: has_divisor(N, I)
Checks whether N has a divisor starting from I.
---------------------------------------------------------
*/

has_divisor(N, I) :-
    I * I =< N,
    (
        N mod I =:= 0
        ;
        NextI is I + 2,
        has_divisor(N, NextI)
    ).