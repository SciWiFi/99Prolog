compress([], []).
compress([X], [X]).
compress([X, X|Xs], Y) :- compress([X|Xs], Y).
compress([X, X1|Xs], [X|Y]) :- X \= X1, compress([X1|Xs], Y).
