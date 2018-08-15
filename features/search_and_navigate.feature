Feature: Search and navigate features
Scenario:
  Given I Open automationpractice.com
  When I search for skirt
  Then The result will be displayed

Scenario:
  Given I Open automationpractice.com in a new tab
  When I click women 
  Then The women section will be displayed
  When I click logo
  Then I return to home section
  When I click dresses
  Then The dresses section will be displayed
  When I click logo
  Then I return to home section
  When I click t-shirts
  Then The t-shirts section will be displayed
