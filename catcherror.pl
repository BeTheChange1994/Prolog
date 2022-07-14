oddMultOf5(N) :-
    (   integer(N)
    ->  0 is N mod 5,
        1 is N mod 2
    ;   print("ERROR: The given parameter is not an integer")
    ).