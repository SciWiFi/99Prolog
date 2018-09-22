remove_at(X, [X|Ys], 1, Ys).
remove_at(X, [Y|Ys], N, [Y|I]) :- N1 is N - 1, remove_at(X, Ys, N1, I).
