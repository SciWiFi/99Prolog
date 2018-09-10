my_but_last(X, [X, Y]).
my_but_last(X, [Y|Ys]) :- my_but_last(X, Ys).