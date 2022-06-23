reverse([H|T], ReversedList):-
	reverseAcc(T, [H], ReversedList).
	
reverseAcc([], Acc, Acc).

reverseAcc([H|T], Acc, ReversedList):-
	reverseAcc(T, [H|Acc], ReversedList