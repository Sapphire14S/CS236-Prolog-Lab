/*
Description : Predicates for birth year and age
              comparison using dates.
*/


/*
---------------------------------------------------------
Facts
---------------------------------------------------------
*/

born(jan, date(20, 3, 1977)).
born(jeroen, date(2, 2, 1992)).
born(joris, date(17, 3, 1995)).
born(jelle, date(1, 1, 2004)).
born(jesus, date(24, 12, 0)).
born(joop, date(30, 4, 1989)).
born(jannecke, date(17, 3, 1993)).
born(jaap, date(16, 11, 1995)).


/*
---------------------------------------------------------
year/2
---------------------------------------------------------
*/

year(Year, Person) :-
    born(Person, date(_, _, Year)).


/*
---------------------------------------------------------
older/2
---------------------------------------------------------
*/

older(Person1, Person2) :-
    born(Person1, Date1),
    born(Person2, Date2),
    before(Date1, Date2).


/*
---------------------------------------------------------
before/2
---------------------------------------------------------
*/

before(date(D1, M1, Y1), date(D2, M2, Y2)) :-
    (
        Y1 < Y2
        ;
        Y1 =:= Y2,
        M1 < M2
        ;
        Y1 =:= Y2,
        M1 =:= M2,
        D1 < D2
    ).