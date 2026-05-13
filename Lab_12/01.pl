/*
Description : Demonstration of Prolog operators
              = , is , and =:=
*/

/*
1. OPERATOR DEFINITIONS
1. =
   - Unification operator
   - Checks whether two terms can be made identical.
   - Does NOT evaluate arithmetic expressions.

2. is
   - Arithmetic evaluation operator
   - Evaluates the RIGHT side arithmetic expression
     and assigns the result to the LEFT side.

3. =:=
   - Arithmetic equality comparison operator
   - Evaluates BOTH sides arithmetically and checks
     whether the numeric values are equal.
*/


/*
2. EXAMPLE QUERIES AND EXPLANATIONS
---------------------------------------------------------
A. USING =
---------------------------------------------------------

?- +(3, 5) = 3 + 5.
true.

Explanation:
3 + 5 is internally represented as +(3,5).
Both structures match exactly.


?- 3 + 5 = +(3, 5).
true.

Explanation:
Again, both are identical Prolog terms.


?- X = 3 + 5.
X = 3+5.

Explanation:
No arithmetic evaluation occurs.
X simply becomes the term 3+5.


?- 8 = 3 + 5.
false.

Explanation:
Left side is the number 8.
Right side is the term +(3,5).
They are structurally different.


?- 3 + 5 = 8.
false.

Explanation:
No evaluation occurs with =.
Prolog only checks structural matching.


?- X = Y.
X = Y.

Explanation:
Both variables are unbound.
Prolog unifies them together.


---------------------------------------------------------
B. USING is
---------------------------------------------------------

?- +(3, 5) is 3 + 5.
false.

Explanation:
Right side evaluates to 8.
Left side becomes +(3,5), not 8.


?- X is 3 + 5.
X = 8.

Explanation:
Right side arithmetic expression is evaluated.


?- 8 is 3 + 5.
true.

Explanation:
3+5 evaluates to 8.


?- 3 + 5 is +(3, 5).
ERROR.

Explanation:
Left side of 'is' must generally be a variable
or a number after evaluation.
The right side evaluates to 8, but the left side
is an unevaluated expression.


?- X is Y.
ERROR: Arguments are not sufficiently instantiated.

Explanation:
Y is unbound.
'is' requires the right side to be fully evaluable.


---------------------------------------------------------
C. USING =:=
---------------------------------------------------------

?- +(3, 5) =:= 3 + 5.
true.

Explanation:
Both sides evaluate numerically to 8.


?- 3 + 5 =:= +(3, 5).
true.

Explanation:
Both expressions evaluate to 8.


?- 3 + 5 =:= 8.
true.

Explanation:
8 = 8 after evaluation.


?- X is 3 + 5, X =:= 8.
X = 8.

Explanation:
X becomes 8, then arithmetic comparison succeeds.


?- 3 + 5 =:= 9.
false.

Explanation:
8 is not equal to 9.


?- X =:= Y.
ERROR: Arguments are not sufficiently instantiated.

Explanation:
Both sides must be evaluable arithmetic expressions.

+----------+---------------------------+-------------------------+
+ Operator +  Purpose                  +   Evaluates Arithmetic? +
+----------+---------------------------+-------------------------+
+ =        +  Unification / Matching   +   No                    +
+ is       +  Arithmetic Assignment    +   Right side only       +
+ =:=      +  Arithmetic Comparison    +   Both sides            +
+----------+---------------------------+-------------------------+

=========================================================
4. IMPORTANT NOTES
=========================================================

1. '=' checks STRUCTURE only.
2. 'is' computes arithmetic values.
3. '=:=’ compares evaluated numeric results.
4. Arithmetic operators require instantiated values.
5. Prolog internally represents:
      3 + 5
   as:
      +(3,5)

*/

/*
5. SAMPLE TEST QUERIES

?- +(3, 5) = 3 + 5.
?- +(3, 5) is 3 + 5.
?- +(3, 5) =:= 3 + 5.
?- 3 + 5 is +(3, 5).
?- 3 + 5 = +(3, 5).
?- 3 + 5 =:= +(3, 5).
?- X = 3 + 5.
?- X is 3 + 5.
?- 8 = 3 + 5.
?- 8 is 3 + 5.
?- 3 + 5 =:= 8.
?- 3 + 5 = 8.
?- X is 3 + 5, X =:= 8.
?- X = Y.
?- X is Y. 
*/