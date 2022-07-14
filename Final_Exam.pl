/*To check if number is prime*/
divisible(I,J):-
Buffer is J*J,
Buffer =< I,
I mod J =:= 0.

divisible(I,J):-
J < I,
J1 is J+1,
divisible(I,J1).

isprime(I):-
J is 2, \+divisible(I,J).

primeNumbers(X) :-

	/*Check if X is an interger, mod function only works with intergers*/
    (   
	integer(X)
    ->  0 is X mod X
    ;   print('ERROR: The given parameter is not an integer'), nl, !
    ),
	
	/*Check if X is equal or over 10*/
	X =< 10, 
	print('Error, Invalid input, please enter a number over 10'), !.
	
	
/*Write numbers from 10 to X that are prime*/
primeNumbers(X) :-
	primeNumbers(10, X).
		
primeNumbers(N, Y) :-
	N =< Y,
	(
	isprime(N) -> writeln(N); true
	),
	N1 is N +1, 
	primeNumbers(N1, Y).