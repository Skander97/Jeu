Feature: TicTacToe 

 Gherkin scenarios based on the rules of the Mastermind game


@mytag

Scenario: Starting a new game
	Given the game is ready to play
	When the player chooses to start a new game
	Then the code maker should generate a secret code
	And the code breaker should be prompted to make a guess

Scenario: Guessing a code
	Given the code maker has generated a secret code
	When the code breaker makes a guess
	Then the code maker should provide feedback on the guess
	And the code breaker should be prompted to make another guess

Scenario: Winning the game
	Given the code maker has generated a secret code
	And the code breaker has made a guess that matches the secret code
	When the code maker provides feedback on the guess
	Then the code breaker should be declared the winner
	And the game should end

Scenario: Losing the game
	Given the code maker has generated a secret code
	And the code breaker has made several guesses that do not match the secret code
	When the code maker provides feedback on the last guess
	Then the code breaker should be prompted to make another guess
	And if the code breaker has used up all their guesses, the code maker should be declared the winner
	And the game should end