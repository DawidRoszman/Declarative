down(0, [0]).
down(N, [N|R]) :-
  M is N - 1,
  down(M, R).
  
