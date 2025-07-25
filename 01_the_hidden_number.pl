/** Facts: number(Value, Color) **/
number(1, white).
number(1, red).
number(2, green).
number(3, green).
number(4, red).
number(4, green).
number(4, blue).
number(5, white).
number(5, blue).
number(6, blue).
number(7, green).
number(8, green).
number(10, green).
number(11, red).
number(11, blue).
number(12, blue).

candidate(Value, Color) :-
    number(Value, Color).

b_uncertain(Value) :-
    findall(C, number(Value, C), Colors),
    length(Colors, L),
    L > 1.

c_knew_b_uncertain(Color) :-
    findall(V, number(V, Color), Values),
    forall(member(V, Values), b_uncertain(V)).

b_now_knows(Value) :-
    findall(Color, (
        candidate(Value, Color),
        b_uncertain(Value),
        c_knew_b_uncertain(Color)
    ), Colors),
    sort(Colors, UniqueColors),
    length(UniqueColors, 1).

c_now_knows(Color) :-
    findall(Value, (
        candidate(Value, Color),
        b_uncertain(Value),
        c_knew_b_uncertain(Color),
        b_now_knows(Value)
    ), Values),
    sort(Values, UniqueValues),
    length(UniqueValues, 1).

final_candidate(Value, Color) :-
    candidate(Value, Color),
    b_uncertain(Value),
    c_knew_b_uncertain(Color),
    b_now_knows(Value),
    c_now_knows(Color).

/**
To Run: install swi-prolog and run swipl, then run the following queries:
?- ['the_hidden_number'].
?- final_candidate(Value, Color).
**/

