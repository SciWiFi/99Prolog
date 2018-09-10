reverse_(X, Y) :- f(X, Y, []).

f([], Y, Y).
f([X|Xs], Y, A) :- f(Xs, Y, [X|A]).
