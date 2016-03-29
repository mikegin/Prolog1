len([], [Y|Rest]).
len([], []).
len([A|Rest1], [B|Rest2]) :- len(Rest1, Rest2).

sub([], _).
sub(X, X).
sub([A|Rest1], [A|Rest2]) :- sub(Rest1, Rest2).
sub([A|Rest1], [B|Rest2]) :- sub([A], Rest2), sub(Rest1, [B|Rest2]), len(Rest1, Rest2).