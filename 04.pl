list_length([], 0).
list_length([X|Xs], Y) :- list_length(Xs, Y1), Y is Y1 + 1.