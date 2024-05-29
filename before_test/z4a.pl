
member2(X, L) :-
  member2(X, L, 0).

member2(_, [], _).
member2(_, _, 2) :- !.

member2(X, [X|R], COUNT) :-
  NEW_COUNT is COUNT + 1,
  member2(X, R, NEW_COUNT).

member2(X, [_|R], COUNT) :-
  member2(X, R, COUNT).

