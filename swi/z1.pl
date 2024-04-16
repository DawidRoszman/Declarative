member(X, [X|_]).
member(X, [_|T]) :- member(X,T).

fac(0,1).
fac(X,Y) :-
  X > 0,
  Z is X - 1,
  fac(Z, C),
  Y is X * C.


fib(0, 0).
fib(1,1).
fib(X,Y) :-
  X > 1,
  X1 is X - 1,
  X2 is X - 2,
  fib(X1, Y1),
  fib(X2, Y2),
  Y is Y1 + Y2.


gcd(0,0,0).
gcd(X, 0, X).
gcd(X, Y, Result) :- 
  X1 is mod(X, Y),
  gcd(Y, X1, Result).

  
