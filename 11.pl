%solution to question 9:
pack([],[[]]).
pack([X], [[X]]) :- not(is_list(X)).
pack([X,X|Xs], [[X|X1]|Y]) :- pack([X|Xs], [X1|Y]).
pack([X,Y|Xs], [[X]|Ys]) :- X \= Y, pack([Y|Xs], Ys).

encode_modified(X, Y) :- pack(X, X1), f(X1, Y).

f([], []).
f([[X|X1]|Xs], [[N|X]|Y]) :- length([X|X1], N), N > 1, f(Xs, Y).
f([[X|X1]|Xs], [X|Y]) :- length([X|X1], N), N == 1, f(Xs, Y).