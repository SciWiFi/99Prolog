insert_at(X, Y, 1, [X|Y]).
insert_at(X, [Y|Ys], N, [Y|I]) :- N1 is N - 1, insert_at(X, Ys, N1, I).