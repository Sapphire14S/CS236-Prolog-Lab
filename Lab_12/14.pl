/*
Description : Approximates sin(X) using Taylor series.
*/

mysin(X, N, Result) :-
    sin_sum(X, 0, N, 0, Result).

/*
---------------------------------------------------------
Helper Predicate: sin_sum/5
---------------------------------------------------------
*/

sin_sum(_, K, N, Acc, Acc) :-
    K >= N.

sin_sum(X, K, N, Acc, Result) :-
    power(-1, K, Sign),
    Exponent is 2 * K + 1,
    power(X, Exponent, PowerX),
    factorial(Exponent, Fact),
    Term is (Sign * PowerX) / Fact,
    NewAcc is Acc + Term,
    NextK is K + 1,
    sin_sum(X, NextK, N, NewAcc, Result).


/*
---------------------------------------------------------
Helper Predicate: factorial/2
---------------------------------------------------------
*/

factorial(0, 1).

factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.


/*
---------------------------------------------------------
Helper Predicate: power/3
---------------------------------------------------------
*/

power(_, 0, 1).

power(X, N, Result) :-
    N > 0,
    N1 is N - 1,
    power(X, N1, Temp),
    Result is X * Temp.