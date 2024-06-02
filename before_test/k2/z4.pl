twice([],[]).
twice([X|L1], [X,X|L2]) :-
    twice(L1,L2).

drzewo(_,_,_).


postorder(nil,[]).
postorder(drzewo(X,nil,nil), [X]).
postorder(drzewo(X,L,P),Res) :-
    postorder(L,LRes),
    postorder(P,PRes),
    append(LRes, PRes, TempRes),
    append(TempRes, [X], Res).
