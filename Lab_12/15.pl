/*
Description : Family relationship predicates.
*/


/*
---------------------------------------------------------
Facts
---------------------------------------------------------
*/

female(mary).
female(sandra).
female(juliet).
female(lisa).

male(peter).
male(paul).
male(dick).
male(bob).
male(harry).

parent(bob, lisa).
parent(bob, paul).
parent(bob, mary).

parent(juliet, lisa).
parent(juliet, paul).
parent(juliet, mary).

parent(peter, harry).

parent(lisa, harry).

parent(mary, dick).
parent(mary, sandra).


/*
---------------------------------------------------------
father/2
---------------------------------------------------------
*/

father(Father, Child) :-
    male(Father),
    parent(Father, Child).


/*
---------------------------------------------------------
sister/2
---------------------------------------------------------
*/

sister(Sister, Person) :-
    female(Sister),
    parent(Parent, Sister),
    parent(Parent, Person),
    Sister \= Person.


/*
---------------------------------------------------------
grandmother/2
---------------------------------------------------------
*/

grandmother(GMother, GrandChild) :-
    female(GMother),
    parent(GMother, Parent),
    parent(Parent, GrandChild).