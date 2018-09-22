decode([], []).
decode([[X,Y]|Xs], I) :- replicate(Y, X, W1), decode(Xs, W), append(W1, W, I).
decode([X|Xs], [X|W]) :- decode(Xs, W), not(is_list(X)).

replicate(_, 0, []) :- !.
replicate(X, N, [X|Y]) :- N1 is N - 1, replicate(X, N1, Y).