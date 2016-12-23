Feature: update event with audienceType

  Scenario: each new event has the audienceType "everyone"
    When an event is created
    Then the cdbxml private attribute of this event equals "false"
    And the cdbxml of this event does not contain the category "2.1.3.0.0"
    And the JSON-LD audience/audienceType of this event equals "everyone"

  Scenario: update event to audienceType 'members'
    Given an event
    When the audience of this event is updated to "members"
    Then the cdbxml private attribute of this event equals "true"
    And the JSON-LD audience/audienceType of this event equals "members"

  Scenario: update event to audienceType 'education'
    Given an event
    When the audience of this event is updated to "education"
    Then the cdbxml private attribute of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |
    And the JSON-LD audience/audienceType of this event equals "education"

  Scenario: update event from audienceType 'everyone' to audienceType 'members'
    Given an event
    And the audience of this event is updated to "everyone"
    When the audience of this event is updated to "members"
    Then the cdbxml private attribute of this event equals "true"
    And the JSON-LD audience/audienceType of this event equals "members"

  Scenario: update event from audienceType 'everyone' to audienceType 'education'
    Given an event
    And the audience of this event is updated to "everyone"
    When the audience of this event is updated to "education"
    Then the cdbxml private attribute of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |
    And the JSON-LD audience/audienceType of this event equals "education"

  Scenario: update event from audienceType 'members' to audienceType 'everyone'
    Given an event
    And the audience of this event is updated to "members"
    When the audience of this event is updated to "everyone"
    Then the cdbxml private attribute of this event equals "false"
    And the JSON-LD audience/audienceType of this event equals "everyone"

  Scenario: update event from audienceType 'members' to audienceType 'education'
    Given an event
    And the audience of this event is updated to "members"
    When the audience of this event is updated to "education"
    Then the cdbxml private attribute of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |
    And the JSON-LD audience/audienceType of this event equals "education"

  Scenario: update event from audienceType 'education' to audienceType 'everyone'
    Given an event
    And the audience of this event is updated to "education"
    When the audience of this event is updated to "everyone"
    Then the cdbxml private attribute of this event equals "false"
    And the cdbxml of this event does not contain the category "2.1.3.0.0"
    And the JSON-LD audience/audienceType of this event equals "everyone"

  Scenario: update event from audienceType 'education' to audienceType 'members'
    Given an event
    And the audience of this event is updated to "education"
    When the audience of this event is updated to "members"
    Then the cdbxml private attribute of this event equals "true"
    And the cdbxml of this event does not contain the category "2.1.3.0.0"
    And the JSON-LD audience/audienceType of this event equals "members"
