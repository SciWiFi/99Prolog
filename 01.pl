% my_last(X, Y) last element of list Y is X
my_last(Y, [Y|[]]).
my_last(X, [Y|YS]) :- my_last(X, YS).