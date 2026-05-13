/*
LEAP YEAR PREDICATE
*/

is_leap_year(Year) :-
    0 is Year mod 400.

is_leap_year(Year) :-
    0 is Year mod 4,
    Year mod 100 =\= 0.

