%solution to question 17:
split(X, 0, [], X).
split([X|Xs], N, [X|Y], I) :- N1 is N - 1, split(Xs, N1, Y, I).

slice(X, N1, N2, I) :- N11 is N1 - 1, split(X, N11, _, I1), A is N2 - N1 + 1, split(I1, A, I, _).