plus(X, Y, Res) :-
  Res is X + Y.

times(0,_,0).
times(X,Y,Res) :-
  X > 0,
  X1 is X - 1,
  times(X1, Y, Res2),
  Res is Y + Res2.

sum-up(0, 0).
sum-up(X, Res) :-
  X > 0,
  X1 is X - 1,
  sum-up(X1, Res2),
  Res is X + Res2.
