:- use_module(main).
:- use_module(minmax).

% Scenario 1: Computer (x) blocks user (o) from winning
scenario1 :-
    write('Scenario 1: Computer (x) blocks user (o) from winning'), nl,
    Board = [o,o,0,
             x,x,0,
             0,0,0],
    printBoard(Board), nl,
    alphabeta([x, play, Board], -1000, 1000, Move, _),
    write('Computer\'s move: '), write(Move), nl,
    updateBoard(3, x, Board, NewBoard),
    printBoard(NewBoard), nl.

% Scenario 2: Computer (o) takes winning move
scenario2 :-
    write('Scenario 2: Computer (o) takes winning move'), nl,
    Board = [o,x,x,
             x,o,0,
             0,0,0],
    printBoard(Board), nl,
    alphabeta([o, play, Board], -1000, 1000, Move, _),
    write('Computer\'s move: '), write(Move), nl,
    updateBoard(7, o, Board, NewBoard),
    printBoard(NewBoard), nl.

% Scenario 3: Computer (x) creates a fork
scenario3 :-
    write('Scenario 3: Computer (x) creates a fork'), nl,
    Board = [x,0,0,
             0,o,0,
             0,0,0],
    printBoard(Board), nl,
    alphabeta([x, play, Board], -1000, 1000, Move, _),
    write('Computer\'s move: '), write(Move), nl,
    updateBoard(9, x, Board, NewBoard),
    printBoard(NewBoard), nl.

% Run all scenarios
run_scenarios :-
    scenario1, nl,
    scenario2, nl,
    scenario3.

% Entry point for running scenarios
:- run_scenarios.