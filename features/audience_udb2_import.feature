Feature: import UDB2 events with private and/or category

  Scenario: import event without property 'private' as audienceType 'everyone'
    Given an event in UDB2
    And in UDB2 the cdbxml private attribute is absent
    When this event is imported in UDB3
    Then the JSON-LD audience/audienceType of this event equals "everyone"

  Scenario: import event with value 'private=false' as audienceType 'everyone'
    Given an event in UDB2
    And in UDB2 the cdbxml private attribute of this event equals "false"
    When this event is imported in UDB3
    Then the JSON-LD audience/audienceType of this event equals "everyone"

  Scenario: import event with value 'private=true' as audienceType 'members'
    Given an event in UDB2
    And in UDB2 the cdbxml private attribute of this event equals "true"
    When this event is imported in UDB3
    Then the JSON-LD audience/audienceType of this event equals "members"

  Scenario: import event with value 'private=true' AND category_id '2.1.3.0.0' as audienceType 'education'
    Given an event in UDB2
    And in UDB2 the cdbxml private attribute of this event equals "true"
    And in UDB2 the cdbxml of this event contains a category with catid "2.1.3.0.0"
    When this event is imported in UDB3
    Then the JSON-LD audience/audienceType of this event equals "education"
