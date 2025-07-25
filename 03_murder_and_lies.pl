/** Suspects list **/
suspect(a).
suspect(b).
suspect(c).
suspect(d).

/** There are four suspects visiting in some order **/
valid_order([S1, S2, S3, S4]) :-
    permutation([a, b, c, d], [S1, S2, S3, S4]).
    
/** A statements **/
false_a(Order, DeathTime) :-
    nth1(APos, Order, a),
    APos >= DeathTime.

/** B statements **/
false_b(Order, DeathTime) :-
    nth1(BPos, Order, b),
    BPos \= 2,
    BPos < DeathTime.

/** C statements **/
false_c(Order, DeathTime) :-
    nth1(CPos, Order, c),
    CPos \= 3,
    CPos >= DeathTime.

/** D statements **/
false_d(Order, DeathTime) :-
    nth1(DPos, Order, d),
    DeathTime > DPos,
    DPos < DeathTime.

/** Apply all constraints **/
valid_scenario(Order, Killer, DeathTime) :-
    valid_order(Order),
    suspect(Killer),
    nth1(DeathTime, Order, Killer),
    false_a(Order, DeathTime),
    false_b(Order, DeathTime),
    false_c(Order, DeathTime),
    false_d(Order, DeathTime).

solve :-
    valid_scenario(Order, Killer, DeathTime),
    format('Killer: ~w~n', [Killer]),
    format('Visit order: ~w~n', [Order]),
    format('Time of death: After ~wth visit~n', [DeathTime]),
    fail.

/**
To Run: install swi-prolog and run swipl, then run the following queries:
?- ['murder_and_lies'].
?- solve.
**/
