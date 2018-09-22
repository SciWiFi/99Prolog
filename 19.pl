%solution to question 17:
split(X, 0, [], X).
split([X|Xs], N, [X|Y], I) :- N1 is N - 1, split(Xs, N1, Y, I).

rotate(X, 0, X).
rotate(X, N, Y) :- length(X, X1), N1 is mod(N, X1), split(X, N1, Y1, Y2), append(Y2, Y1, Y).
