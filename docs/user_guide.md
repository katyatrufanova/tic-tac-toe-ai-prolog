# User Guide for Tic-Tac-Toe AI

## Getting Started

To begin using the Tic-Tac-Toe game:

1. Ensure you have SWI-Prolog installed on your computer.
2. Download and unzip the game folder.
3. Launch the game by executing the following commands in SWI-Prolog:
```
consult('<path>/main.pl').
main.
```
Replace <path> with the actual path to the main.pl file.

Note: This application has been tested exclusively in SWI-Prolog. Correct execution in other Prolog environments is not guaranteed.

## Gameplay

1. Upon starting the game, you'll be prompted to select a symbol: 'x' or 'o'. Enter your choice followed by a dot (.) as per Prolog syntax.
    - If you choose an invalid symbol, you'll be notified and asked to select again.
2. Turn order is determined by your symbol choice:
    - If you chose 'x', you go first.
    - If you chose 'o', the computer goes first.
3. On your turn:
    - The 3x3 game board will be displayed.
    - You'll be prompted to choose a cell number for your move (1-9).
    - If you select an incorrect or occupied cell, you'll be notified and prompted to choose again.
    - After your move, the computer will make its move, which will be displayed on the game board.
4. The game continues until one of three end states is reached:
    - 'x wins'
    - 'o wins'
    - 'draw'
5. Once the game ends, you'll be notified of the result.

Enjoy playing Tic-Tac-Toe against the AI!