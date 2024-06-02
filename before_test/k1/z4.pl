shift([X], [X]).
shift([X,Y|L1], [Y|L2]) :- 
  shift([X|L1],L2).

silnia(0,1).
silnia(N, Result) :-
  N > 0,
  N2 is N - 1,
  silnia(N2, C),
  Result is N * C.


sil(0,[]).
sil(N, [F|C]) :-
  N > 0,
  silnia(N,F),
  X is N - 1,
  sil(X, C).
