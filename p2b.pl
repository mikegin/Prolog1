delete(_, [], []).
delete(X, [X|Rest1], Rest2) :- delete(X, Rest1, Rest2).
delete(X, [Y|Rest1], [Z|Rest2]) :- is_list(Y), delete(X, Y, Z), delete(X, Rest1, Rest2).
delete(X, [Y|Rest1], [Y|Rest2]) :- delete(X, Rest1, Rest2).