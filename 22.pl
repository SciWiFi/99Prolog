range(X, X, [X]).
range(X, Y, [X|Xs]) :- X =< Y, X1 is X + 1, range(X1, Y, Xs).