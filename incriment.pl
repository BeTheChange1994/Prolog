print_numbers(N) :-
    print_numbers(1, N).

% general case X must be lower than Y
print_numbers(X, Y) :-
    X =< Y,
    writeln(X),
    X1 is X + 1,
    print_numbers(X1, Y).