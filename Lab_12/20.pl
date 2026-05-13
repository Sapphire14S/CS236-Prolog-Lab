/*
Description : Checks whether a person is single.
*/


/*
---------------------------------------------------------
Facts
---------------------------------------------------------
*/

married(peter, lucy).
married(paul, mary).
married(bob, juliet).
married(harry, geraldine).


/*
---------------------------------------------------------
single/1
---------------------------------------------------------
*/

single(Person) :-
    \+ married(Person, _),
    \+ married(_, Person).