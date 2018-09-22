pack([],[[]]).
pack([X], [[X]]) :- not(is_list(X)).
pack([X,X|Xs], [[X|X1]|Y]) :- pack([X|Xs], [X1|Y]).
pack([X,Y|Xs], [[X]|Ys]) :- X \= Y, pack([Y|Xs], Ys).
