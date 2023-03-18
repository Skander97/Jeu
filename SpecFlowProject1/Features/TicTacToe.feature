Feature: TicTacToe 

 Gherkin scenarios based on the rules of the TIC TAC TOE game


@mytag

Scenario:The game ends in a draw
	Given a TIC TAC TOE board with empty cells
	When player X places their first move at cell (1, 1)
	And player O places their first move at cell (2, 1)
	And player X places their second move at cell (2, 2)
	And player O places their second move at cell (3, 1)
	And player X places their third move at cell (1, 2)
	And player O places their third move at cell (1, 3)
	And player X places their fourth move at cell (3, 2)
	And player O places their fourth move at cell (3, 3)
	And player X places their fifth move at cell (2, 3)
	Then the game ends in a draw

Scenario: Player X makes an invalid move
	Given a TIC TAC TOE board with empty cells
	When player X places their first move at cell (1, 1)
	And player O places their first move at cell (2, 1)
	And player X places their second move at cell (1, 2)
	And player O places their second move at cell (2, 2)
	And player X places their third move at cell (1, 3)
	And player O places their third move at cell (2, 3)
	And player X tries to place their fourth move at cell (1, 1)
	Then player X's move is invalid

Scenario: Player X wins by completing a diagonal line
	Given a TIC TAC TOE board with empty cells
	When player X places their first move at cell (1, 1)
	And player O places their first move at cell (2, 1)
	And player X places their second move at cell (2, 2)
	And player O places their second move at cell (3, 1)
	And player X places their third move at cell (3, 3)
	Then player X wins the game


Scenario: Player O wins by completing a vertical line
	Given a TIC TAC TOE board with empty cells
	When player X places their first move at cell (1, 1)
	And player O places their first move at cell (1, 2)
	And player X places their second move at cell (2, 1)
	And player O places their second move at cell (2, 2)
	And player X places their third move at cell (3, 3)
	And player O places their third move at cell (3, 2)
	Then player O wins the game

Scenario: Player X wins by completing a horizontal line
	Given a TIC TAC TOE board with empty cells
	When player X places their first move at cell (1, 1)
	And player O places their first move at cell (2, 1)
	And player X places their second move at cell (1, 2)
	And player O places their second move at cell (2, 2)
	And player X places their third move at cell (1, 3)
	Then player X wins the game