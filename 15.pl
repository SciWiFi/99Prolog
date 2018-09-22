dupli([], _, []).
dupli([X|Xs], N, I) :- replicate(X, N, Y1), dupli(Xs, N, Y), append(Y1, Y, I).

%from question 12:
replicate(_, 0, []) :- !.
replicate(X, N, [X|Y]) :- N1 is N - 1, replicate(X, N1, Y).