my_flatten([], []).
my_flatten(X, [X]) :- not(is_list(X)).
my_flatten([X|Xs], Y) :- my_flatten(X, X1), my_flatten(Xs, Xs1), append(X1, Xs1, Y).