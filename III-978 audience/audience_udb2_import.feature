Feature: import UDB2 events with private and/or category

  Scenario: import event without value 'private=true' as audience 'everyone'
    Given an event in UDB2
    And this event does not have the value 'private=true'
    When this event is imported in UDB3
    Then this event has the value audience:'everyone'

  Scenario: import event with value 'private=true' as audience 'members'
    Given an event in UDB2
    And this event has the value 'private=true'
    When this event is imported in UDB3
    Then this event has the value audience:'members'

  Scenario: import event with value 'private=true' AND category_id '2.1.3.0.0' as audience 'education'
    Given an event in UDB2
    And this event has the value 'private=true' and category_id '2.1.3.0.0'
    When this event is imported in UDB3
    Then this event has the value audience:'education'
