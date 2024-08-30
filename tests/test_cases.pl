:- use_module(main).
:- use_module(minmax).

% Test case for checkWinningCondition
test_winning_condition :-
    checkWinningCondition(x, [x,x,x,0,0,0,0,0,0]),
    checkWinningCondition(o, [0,0,0,o,o,o,0,0,0]),
    checkWinningCondition(x, [x,0,0,0,x,0,0,0,x]),
    \+ checkWinningCondition(o, [x,o,x,o,x,o,x,0,0]).

% Test case for evaluate
test_evaluate :-
    evaluate([o, win, _], 1),
    evaluate([x, win, _], -1),
    evaluate([_, draw, _], 0).

% Test case for updateBoard
test_update_board :-
    updateBoard(1, x, [0,0,0,0,0,0,0,0,0], [x,0,0,0,0,0,0,0,0]),
    updateBoard(5, o, [x,0,0,0,0,0,0,0,0], [x,0,0,0,o,0,0,0,0]).

% Test case for switchPlayer
test_switch_player :-
    switchPlayer(x, o),
    switchPlayer(o, x).

% Run all tests
run_tests :-
    test_winning_condition,
    test_evaluate,
    test_update_board,
    test_switch_player,
    write('All tests passed successfully!'), nl.

% Entry point for running tests
:- run_tests.