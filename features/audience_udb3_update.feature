Feature: update event with audience

  Scenario: update event from audience 'everyone' to audience 'members'
    Given an event
    And the audience of this event is updated to "everyone"
    When the audience of this event is updated to "members"
    Then the cdbxml private property of this event equals "true"

  Scenario: update event from audience 'everyone' to audience 'education'
    Given an event
    And the audience of this event is updated to "everyone"
    When the audience of this event is updated to "education"
    Then the cdbxml private property of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |

  Scenario: update event from audience 'members' to audience 'everyone'
    Given an event
    And the audience of this event is updated to "members"
    When the audience of this event is updated to "everyone"
    Then the cdbxml private property of this event is removed

  Scenario: update event from audience 'members' to audience 'education'
    Given an event
    And the audience of this event is updated to "members"
    When the audience of this event is updated to "education"
    Then the cdbxml private property of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |

  Scenario: update event from audience 'education' to audience 'everyone'
    Given an event
    And the audience of this event is updated to "education"
    When the audience of this event is updated to "everyone"
    Then the cdbxml private property of this event is removed
    And the cdbxml of this event does not contain the category "2.1.3.0.0"

  Scenario: update event from audience 'education' to audience 'members'
    Given an event
    And the audience of this event is updated to "education"
    When the audience of this event is updated to "members"
    Then the cdbxml private property of this event equals "true"
    And the cdbxml of this event does not contain the category "2.1.3.0.0"

  Scenario: update event without audience to audience 'members'
    Given an event
    When the audience of this event is updated to "members"
    Then the cdbxml private property of this event equals "true"

  Scenario: update event without audience to audience 'education'
    Given an event
    When the audience of this event is updated to "education"
    Then the cdbxml private property of this event equals "true"
    And the cdbxml of this event contains the following categories:
      | <category catid="2.1.3.0.0" type="targetaudience">Scholen</category> |

  Scenario: update event without audience to audience 'everyone'
    Given an event
    When the audience of this event is updated to "everyone"
    Then the cdbxml private property of this event is removed