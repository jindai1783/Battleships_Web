Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    Then I enter "Huy"
    Then I shall be redirected to "/confirm"
    Then I shall see "... Welcome to BattleShips"

  Scenario: Registering with no input
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    Then I enter ""
    Then I shall be redirected to "/new"