Feature: set upper boundary of JSON-LD typicalAgeRange based on lower boundary.

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary up to 12 becomes 12
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 0-12>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 0-12>-12"

    Examples:
      | agefrom |
      | 0       |
      | 3       |
      | 12      |

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary between 13 and 18 becomes 18
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 13-18>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 13-18>-18"

    Examples:
      | agefrom |
      | 13      |
      | 18      |

  @issue-III-1679
  Scenario Outline: upper boundary of typicalAgeRange for lower boundary higher than 18 becomes 99
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value between 19-99>
    Then the JSON-LD typicalAgeRange property of this event equals "<value between 19-99>-99"

    Examples:
      | agefrom |
      | 19      |
      | 99      |

  @issue-III-1679
  Scenario Outline: lower boundary of typicalAgeRange for starting age higher than 99 becomes 99
    Given an event in UDB3
    When the lower boundary of the typicalAgeRange for this event is set to <value higher then 99>
    Then the JSON-LD typicalAgeRange property of this event equals "99-99"

    Examples:
      | agefrom |
      | 100     |
      | 101     |

    # How do I integrate the examples in these scenario's when agefrom is not used in json-ld?