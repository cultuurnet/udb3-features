Feature: set upper boundary of JSON-LD typicalAgeRange based on lower boundary.

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary up to and including 11 becomes 11
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 0-11>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 0-11>-11"

    Examples:
      | agefrom |
      | 0       |
      | 3       |
      | 11      |

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary between 12 and 17 becomes 17
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 12-17>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 12-17>-17"

    Examples:
      | agefrom |
      | 12      |
      | 17      |

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary higher than 17 becomes 120
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 18-120>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 18-120>-120"

    Examples:
      | agefrom |
      | 18      |
      | 120      |

  @issue-III-1679
  Scenario Outline: lower boundary of typicalAgeRange for starting age higher than 120 becomes 120
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value higher then 120>
    Then the JSON-LD typicalAgeRange property of this event equals "120-120"

    Examples:
      | agefrom |
      | 121     |
      | 1450     |

    # How do I integrate the examples in these scenario's when agefrom is not used in json-ld?