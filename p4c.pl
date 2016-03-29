%program that tests if a list representing a clause is tautological
neg(X, Y) :- Y is -X.

in(X, [X|Rest]).
in(X, [Y|Rest]):- in(X, Rest).

taut([X|Rest]) :- neg(X, Y), in(Y, Rest).
taut([X|Rest]) :- taut(Rest).
