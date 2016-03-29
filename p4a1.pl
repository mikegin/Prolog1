%program that does resolution of two clauses (represented as lists)
neg(X, Y) :- Y is -X.

in(X, [X|Rest]).
in(X, [Y|Rest]):- in(X, Rest).

app([], L, L).
app([H|T], L, [H|Rest]) :- app(T, L, Rest).

remove(_, [], []).
remove(X, [X|Rest], Rest1) :- remove(X, Rest, Rest1).
remove(X, [Y|Rest], [Y|Rest1]) :- remove(X, Rest, Rest1).

uniq([], []).
uniq([H|T], [H|T1]) :- remove(H, T, T2), uniq(T2, T1).

resolve(A, B, X, Z) :- neg(X, Y), in(X, A), in(Y, B), remove(X, A, A1), remove(Y, B, B1), app(A1, B1, Z1), uniq(Z1, Z).
resolve(A, B, X, Z) :- neg(X, Y), in(Y, A), in(X, B), remove(Y, A, A1), remove(X, B, B1), app(A1, B1, Z1), uniq(Z1, Z).
