element_at(X, [X|Xs], 1).
element_at(X, [Y|Ys], N) :- N1 is N - 1, element_at(X, Ys, N1).