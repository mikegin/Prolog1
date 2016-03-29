merge(T, nil, T).
merge(nil, T, T).
merge(T, T, T).

merge(t(L1, X, R1), t(nil, Y, nil), t(L1, X, R2)) :- X=<Y, merge(R1, t(nil, Y, nil), R2).
merge(t(L1, X, R1), t(nil, Y, nil), t(L2, X, R1)) :- X>Y, merge(L1, t(nil, Y, nil), L2).

merge(t(L1, X, R1), t(L2, Y, R2), Z) :- merge(t(L1, X, R1), t(nil, Y, nil), A), merge(A, L2, B), merge(B, R2, Z).