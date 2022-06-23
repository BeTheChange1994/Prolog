:- initialization(main).
main :- write('Hello World!').
list_reverse([],[]).
list_reverse([_First|_Rest],_Reversed):-
list_reverse(rest,_ReversedRest).
concatenation(_ReversedRest,[_First],_Reversed).
concatenation([],L,L).
concatenation([X1|L1],L2,[X1|L3]):-concatenation(L1,L2,L3).