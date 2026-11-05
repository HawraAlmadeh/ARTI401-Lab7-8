member(X, [X|_Tail]).
member(X, [_Head|Tail]):- member(X, Tail).



del(X, [X|Tail], Result):-
    del(X, Tail, Result).

del(X, [Y|Tail], [Y|Taill]):-
    X\=Y,
    del(X, Tail, Taill).

del(_, [], []).




