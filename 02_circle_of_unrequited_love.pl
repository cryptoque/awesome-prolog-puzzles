/** Male Characters **/
man(m1).
man(m2).
man(m3).
man(m4).

/** Female Characters **/
woman(w1).
woman(w2).
woman(w3).
woman(w4).

person(P) :- man(P); woman(P).

/** Ensure cross gender inside circle **/
cross_gender(X, Y) :-
    (man(X), woman(Y));
    (woman(X), man(Y)).

cross_gender_chain([P1,P2|Rest]) :-
    cross_gender(P1, P2),
    cross_gender_chain([P2|Rest]).
cross_gender_chain([_]).

/** Love is a circle **/
loves_in_cycle(X, Y, [P1,P2,P3,P4,P5,P6,P7,P8]) :-
    (X, Y) = (P1, P2);
    (X, Y) = (P2, P3);
    (X, Y) = (P3, P4);
    (X, Y) = (P4, P5);
    (X, Y) = (P5, P6);
    (X, Y) = (P6, P7);
    (X, Y) = (P7, P8);
    (X, Y) = (P8, P1).

/** clues a-e **/
clue_a(Cycle) :-
    loves_in_cycle(w2, M, Cycle),
    man(M),
    loves_in_cycle(M, w1, Cycle).

clue_b(Cycle) :-
    loves_in_cycle(w4, M, Cycle),
    man(M),
    loves_in_cycle(M, W, Cycle),
    woman(W),
    loves_in_cycle(W, m1, Cycle).

clue_c(Cycle) :-
    loves_in_cycle(w3, M, Cycle),
    man(M),
    loves_in_cycle(M, W, Cycle),
    woman(W),
    loves_in_cycle(W, m3, Cycle).

clue_d(Cycle) :-
    loves_in_cycle(m2, W, Cycle),
    woman(W),
    loves_in_cycle(W, M, Cycle),
    man(M),
    M \= m4.

clue_e(Cycle) :-
    \+ loves_in_cycle(m4, w4, Cycle),
    \+ loves_in_cycle(m1, w4, Cycle).

/** Enforce all constraints, use P1=m1 to force a cycle starting point **/
cycle_of_love([P1,P2,P3,P4,P5,P6,P7,P8]) :-
    permutation([m1, m2, m3, m4, w1, w2, w3, w4], [P1,P2,P3,P4,P5,P6,P7,P8]),
    P1 == m1,
    cross_gender_chain([P1,P2,P3,P4,P5,P6,P7,P8]),
    clue_a([P1,P2,P3,P4,P5,P6,P7,P8]),
    clue_b([P1,P2,P3,P4,P5,P6,P7,P8]),
    clue_c([P1,P2,P3,P4,P5,P6,P7,P8]),
    clue_d([P1,P2,P3,P4,P5,P6,P7,P8]),
    clue_e([P1,P2,P3,P4,P5,P6,P7,P8]).

print_cycle([P1,P2,P3,P4,P5,P6,P7,P8]) :-
    format('~w → ~w → ~w → ~w → ~w → ~w → ~w → ~w → ~w~n',
        [P1, P2, P3, P4, P5, P6, P7, P8, P1]).

solve :-
    cycle_of_love(Cycle),
    print_cycle(Cycle),
    fail.

/**
To Run: install swi-prolog and run swipl, then run the following queries:
?- ['circle_of_unrequited_love'].
?- solve.
**/

