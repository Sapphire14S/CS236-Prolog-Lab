/*
Description : Computes the Greatest Common Divisor
              using Euclid's Algorithm.
*/

gcd(A, 0, A) :-
    !.

gcd(A, B, GCD) :-
    B > 0,
    Remainder is A mod B,
    gcd(B, Remainder, GCD).