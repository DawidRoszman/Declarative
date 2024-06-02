eliminate(X,[],[]).
eliminate(X,[X,X|L],L1) :- eliminate(X,L,L1).
eliminate(X,[Y|L],[Y|L1]) :- eliminate(X,L,L1).

p(1).
p(2) :- !.
p(3).
