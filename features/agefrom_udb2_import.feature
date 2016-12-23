Feature: UDB2 cdbxml agefrom gets projected to JSON-LD typicalAgeRange property.

  @issue-III-1637
  Scenario Outline: upper boundary of typicalAgeRange for agefrom up to 11 becomes 11
    Given an event in UDB2
    And in UDB2 the cdbxml agefrom attribute of this event equals <agefrom>
    When this event is imported in UDB3
    Then the JSON-LD typicalAgeRange property of this event equals "<agefrom>-11"

    Examples:
      | agefrom |
      | 0       |
      | 3       |
      | 11      |

  @issue-III-1637
  Scenario Outline: upper boundary of typicalAgeRange for agefrom between 12 and 17 becomes 17
    Given an event in UDB2
    And in UDB2 the cdbxml agefrom attribute of this event equals <agefrom>
    When this event is imported in UDB3
    Then the JSON-LD typicalAgeRange property of this event equals "<agefrom>-18"

    Examples:
      | agefrom |
      | 12      |
      | 17      |

  @issue-III-1637
  Scenario Outline: upper boundary of typicalAgeRange for agefrom higher than 17 becomes 120
    Given an event in UDB2
    And in UDB2 the cdbxml agefrom attribute of this event equals <agefrom>
    When this event is imported in UDB3
    Then the JSON-LD typicalAgeRange property of this event equals "<agefrom>-120"

    Examples:
      | agefrom |
      | 18      |
      | 99      |
      | 120      |

  @issue-III-1637
  Scenario Outline: lower boundary of typicalAgeRange for agefrom higher than 120 becomes 120
    Given an event in UDB2
    And in UDB2 the cdbxml agefrom attribute of this event equals <agefrom>
    When this event is imported in UDB3
    Then the JSON-LD typicalAgeRange property of this event equals "99-99"

    Examples:
      | agefrom |
      | 121     |
      | 14500   |