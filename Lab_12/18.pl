/*
Description : Predicate succeeds for lists with an
              even number of elements.
*/

whoami([]).

whoami([_, _ | Rest]) :-
    whoami(Rest).