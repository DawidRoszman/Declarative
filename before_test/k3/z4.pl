member(X,[X|_]).
member(X,[_|R]) :-
    member(X,R).

split(_,[],[],[]).
split(X,[F|R], [F|R1], Greater) :-
    F < X,
    split(X,R,R1,Greater).
split(X,[F|R],Lower,[F|R1]) :-
    F > X,
    split(X,R,Lower,R1).

split(X,[X|R], Lower, Greater) :-
  split(X,R,Lower,Greater).
