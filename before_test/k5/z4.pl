reverse([],[]).
reverse(L,R):- reverse_acc(L, [], R).

reverse_acc([], Res, Res).
reverse_acc([H|L], Acc, Res) :-
  reverse_acc(L, [H|Acc], Res).

split(_,[],[],[]).
split(X,[H|T], [H|T1], Higher) :-
  X > H,
  split(X, T, T1, Higher).
split(X, [H|T], Lower, [H|T1]) :-
  X < H,
  split(X, T, Lower, T1).
split(X, [X|T], Lower, Higher) :-
  split(X, T, Lower, Higher).
