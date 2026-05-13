/*
Description : Checks whether an atom is a palindrome.
*/

palindrome(Atom) :-
    atom_chars(Atom, CharList),
    reverse(CharList, ReversedList),
    CharList = ReversedList.