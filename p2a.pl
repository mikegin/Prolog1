merge([],L,L).
merge(L,[],L).
merge([A|Rest1], [B|Rest2], [A|Rest]) :- A =< B, merge(Rest1, [B|Rest2], Rest).
merge([A|Rest1], [B|Rest2], [B|Rest]) :- A > B, merge([A|Rest1], Rest2, Rest).