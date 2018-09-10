dupli([], []).
dupli([X|Xs], [X,X|Y]) :- dupli(Xs, Y).