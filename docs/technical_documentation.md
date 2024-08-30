# Technical Documentation

## Project Overview

This Tic-Tac-Toe AI project implements a two-player game using Prolog, featuring an AI opponent that uses the Min-Max algorithm with Alpha-Beta pruning.

## Modules

The project consists of two main modules:

1. `main.pl`: Handles game logic, user interaction, and board state management.
2. `minmax.pl`: Implements the Min-Max algorithm with Alpha-Beta pruning.

## Min-Max Algorithm with Alpha-Beta Pruning

The AI uses the Min-Max algorithm with Alpha-Beta pruning to make optimal decisions. This approach allows the AI to:

- Explore the game tree efficiently
- Evaluate potential future states
- Make decisions that maximize its chances of winning while minimizing the opponent's opportunities

The implementation is optimized for performance, allowing for deep tree searches.

## Key Predicates

### In main.pl:

- `main/0`: Entry point for the game.
- `playGame/2`: Main game loop.
- `checkWinningCondition/2`: Checks if a player has won.
- `evaluate/2`: Heuristic evaluation function.
- `updateBoard/4`: Updates the game board.
- `switchPlayer/2`: Switches the current player.

### In minmax.pl:

- `alphabeta/5`: Entry point for the Min-Max algorithm with Alpha-Beta pruning.
- `findBestMove/6`: Recursively evaluates possible game states.
- `updateBounds/5`: Updates Alpha and Beta bounds.
- `evaluateMove/6`: Compares moves and selects the better one.

## Extensibility

The `minmax.pl` module is designed to be game-agnostic. To adapt it for other two-player board games, implement the following game-specific predicates:

- `possibleMove/2`: Generates possible moves for a player.
- `minTurn/1`: Determines if the current position is a min-turn.
- `maxTurn/1`: Determines if the current position is a max-turn.
- `evaluate/2`: Assigns a value to a game state.

## Future Improvements

Potential areas for enhancement include:

1. Implementing a graphical user interface.
2. Optimizing the evaluation function for better performance.
3. Adding difficulty levels by limiting the search depth.
4. Extending the AI to play other board games.