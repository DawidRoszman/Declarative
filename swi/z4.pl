latin(x, 10).
latin(l, 50).
latin(v, 5).
latin(i, 1).
latin(c, 100).
latin(d, 500).
latin(m, 1000).
latin([X], Res) :-
  latin(X, Res).
latin([H, N|T], Res) :-
  latin(H, ValH),
  latin(N, ValN),
  ValH >= ValN,
  latin([N|T], Res2),
  Res is ValH + Res2.
latin([H, N|T], Res) :-
  latin(H, ValH),
  latin(N, ValN),
  ValH < ValN,
  latin([N|T], Res2),
  Res is Res2 - ValH.
