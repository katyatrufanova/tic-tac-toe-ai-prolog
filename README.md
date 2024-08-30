# tic-tac-toe-ai-prolog: Advanced Prolog Implementation with Min-Max Algorithm and Alpha-Beta Pruning

## Project Overview

tic-tac-toe-ai-prolog is a sophisticated implementation of the classic Tic-Tac-Toe game in Prolog, showcasing advanced artificial intelligence techniques. This project demonstrates the power of logical programming in game theory and AI decision-making processes.

### Key Features

- **Min-Max Algorithm**: Implements the Min-Max algorithm for optimal decision-making.
- **Alpha-Beta Pruning**: Enhances efficiency through Alpha-Beta pruning optimization.
- **Modular Design**: Separates game logic and AI algorithm for improved maintainability.
- **Extensible Framework**: Designed to be easily adaptable for other two-player board games.
- **Interactive User Interface**: Provides a user-friendly command-line interface for gameplay.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Technical Details](#technical-details)
- [Project Structure](#project-structure)

## Installation

1. Ensure you have SWI-Prolog installed on your system. If not, download it from [SWI-Prolog's official website](https://www.swi-prolog.org/).

2. Clone this repository:
```
git clone https://github.com/katyatrufanova/tic-tac-toe-ai-prolog.git
```

3. Navigate to the project directory:
```
cd tic-tac-toe-ai-prolog
```

## Usage

1. Start SWI-Prolog in the project directory.

2. Load the main program:
```
?- [src/main].
```

3. Start the game:
```
?- main.
```

4. Follow the on-screen instructions to play the game.

For detailed instructions, please refer to the User Guide.

## Technical Details

### Min-Max Algorithm with Alpha-Beta Pruning

The AI opponent uses the Min-Max algorithm with Alpha-Beta pruning to make optimal decisions. This approach allows the AI to:

- Explore the game tree efficiently
- Evaluate potential future states
- Make decisions that maximize its chances of winning while minimizing the opponent's opportunities

The implementation is highly optimized, allowing for deep tree searches even on resource-constrained systems.

### Modular Design

The project is split into two main modules:

1. `main.pl`: Handles game logic, user interaction, and board state management.
2. `minmax.pl`: Implements the Min-Max algorithm with Alpha-Beta pruning.

This separation of concerns allows for easy maintenance and potential expansion to other game types.

### Extensibility

The minmax.pl module is designed to be game-agnostic. By implementing game-specific predicates (possibleMove/2, minTurn/1, maxTurn/1, evaluate/2), the AI can be adapted to play other two-player board games with minimal modifications.

For more in-depth information about the implementation, please see the Technical Documentation.

## Project Structure
```
tic-tac-toe-ai-prolog/
├── src/               # Source code
│   ├── main.pl        # Main game logic
│   └── minmax.pl      # Min-Max algorithm implementation
├── docs/              # Documentation
│   ├── user_guide.md
│   └── technical_documentation.md
├── tests/             # Test cases
│   └── test_cases.pl
├── examples/          # Example game scenarios
│   └── game_scenarios.pl
└── README.md
```