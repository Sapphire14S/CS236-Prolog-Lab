/*
Description : Custom implementation of member/2.
*/

membership(X, [X | _]).

membership(X, [_ | Tail]) :-
    membership(X, Tail).