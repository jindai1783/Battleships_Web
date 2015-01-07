Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    Then I enter "Huy"
    Then I shall be redirected to "/start"
    Then I shall see "Please place your ship"

  Scenario: Registering without a name
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    When I click submit without entering a name
    Then I shall be redirected to "/try_again"
    When I click submit
    Then I shall be redirected to "/new"

  Scenario: Start a game
    Given I am on the Start page
    Then I shall see "Please place your ship"
    Then I enter a ship on co-ordinate "A1"
    Then I shall see "ship placed on A1"