:- use_module(library(clpfd)).

solve :-
    time(solve_logic).
solve_logic :-
    % Variables here hold truth value 0 or 1
    Dwarfs = [Red, Orange, Yellow, Green, Blue, Black, White],
    Dwarfs ins 0..1,

    % Red: "Black has a delicious apple"
    % No need for #<==> (Red #= 1) here because #= enforces equivalence between the dwarf’s honesty and the truth of their statement
    Red #= Black,

    % Orange: "There are exactly three delicious apples"
    sum(Dwarfs, #=, Total),
    (Total #= 3) #<==> (Orange #= 1),

    % Yellow: "I and Orange are the same type of person"
    (Yellow #= Orange) #<==> (Yellow #= 1),

    % Blue: "White and I are not the same type of person"
    (Blue #\= White) #<==> (Blue #= 1),

    % Black: "Green and I are not the same type of person"
    (Black #\= Green) #<==> (Black #= 1),

    % White: "Red has a delicious apple"
    % No need for #<==> (Red #= 1) here for the same reason as Red
    White #= Red,

    % Use clpfd default labeling strategy
    labeling([], Dwarfs),

    print_result(Dwarfs),
    fail.

print_result(Dwarfs) :-
    Names = [red, orange, yellow, green, blue, black, white],
    findall(Name, (nth0(I, Dwarfs, 1), nth0(I, Names, Name)), HonestDwarfs),
    format('Delicious apples are held by: ~w~n', [HonestDwarfs]).

/**
To Run: install swi-prolog and run swipl, then run the following queries:
?- ['sleeping_prince'].
?- solve.
**/
