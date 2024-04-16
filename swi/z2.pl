child(X, parent).

mother(X, Y) :-
  female(X),
  parent(X, Y).

sister(X, Y) :-
  female(X),
  child(X, C),
  child(Y, C).

has_a_child(X) :-
  child(_, X).

grandparent(X, Y) :-
  child(), X),
  child(Y, _).

predecessor(X, Z) :- parent(X, Z).
predecessor(X, Z) :- 
  parent(X, Y),
  predecessor(Y, Z).

  
