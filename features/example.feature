Feature: Visit homepage of http://www.myrapname.com/

  Scenario: Input Fields Exist on homepage
    Given   I am on the homepage
    Then I should see a field "firstname"
    And I should see a field "lastinitial"
    But I should not see a field "favoritecolor"

  Scenario: Input Fields Exist on homepage
    Given   I am on the homepage
    And I fill in "firstname" with "Leiya"
    And I fill in "lastinitial" with "K"

  Scenario: Inputting name with nickname prepends it to list
    Given   I am on the homepage
    And I fill in "firstname" with "Mike"
    When I select checkbox "shorten"
    When I click on the "Suggest Male Rap Name" button
    Then I should see the text "Mike"

  Scenario: Submit twice for a female with a last initial and validate the new name has been added to the list
    Given   I am on the homepage
    And I fill in "firstname" with "Leiya"
    And I fill in "lastinitial" with "K"
    When I click on the "Suggest Female Rap Name" button
    And I click on the "Suggest Female Rap Name" button again
    Then I should have 2 table rows
