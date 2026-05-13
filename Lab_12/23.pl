/*
Description : Custom operators and expression evaluator.
*/


/*
---------------------------------------------------------
Operator Definitions
---------------------------------------------------------
*/

:- op(500, yfx, ++).

:- op(400, yfx, **).


/*
---------------------------------------------------------
eval_expr/2
---------------------------------------------------------
*/

eval_expr(Int, Int) :-
    integer(Int).

eval_expr(A ++ B, Val) :-
    eval_expr(A, ValA),
    eval_expr(B, ValB),
    Val is ValA + ValB + 1.

eval_expr(A ** B, Val) :-
    eval_expr(A, ValA),
    eval_expr(B, ValB),
    Val is ValA * ValB * 2.