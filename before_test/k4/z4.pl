member2(X, L):-
    member2(X,L,0).

member2(X, [], 2).
member2(X, [X|R], Counter):-
    NewCounter is Counter + 1,
    member2(X,R,NewCounter).
member2(X,[_|R], Counter):-
    member2(X,R,Counter).

down(0,[0]).
down(N,[N|R]):-
    N1 is N - 1,
    down(N1,R).
