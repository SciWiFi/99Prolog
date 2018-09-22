split(X, 0, [], X).
split([X|Xs], N, [X|Y], I) :- N1 is N - 1, split(Xs, N1, Y, I).
