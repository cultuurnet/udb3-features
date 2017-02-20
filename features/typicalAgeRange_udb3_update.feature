Feature: set lower and upper boundary of JSON-LD typicalAgeRange

    
@issue-III-1735
Scenario: lower and upper boundary of typicalAgeRange left empty (all ages)
 Given an event in UDB3
 When the lower boundary of the typicalAgeRange for this event is left empty
  And the upper boundary of the typicalAgeRange for this event is left empty
 Then the JSON-LD typicalAgeRange property of this event equals "-"
  And the cdbxml agefrom property of this event is absent
  And the cdbxml ageto property of this event is absent
  And the UI shows the copy "Alle leeftijden"


@issue-III-1735
Scenario: typicalAgeRange with lower and upper boundary
Given an event in UDB3
 When the lower boundary of the typicalAgeRange for this event is set to "%{lower boundary}"
  And the upper boundary of the typicalAgeRange for this event is set to "%{upper boundary}"
 Then the JSON-LD typicalAgeRange property of this event equals "%{lower boundary}-%{upper boundary}"
  And the cdbxml agefrom property of this event equals "%{lower boundary}"
  And the cdbxml ageto property of this event equals "%{upper boundary}"
  
 Examples:
      | lower boundary | upper boundary |
      | 0              | 2              |
      | 3              | 5              |
      | 6              | 11             |
      | 12             | 17             |


@issue-III-1735
Scenario: typicalAgeRange with only lower boundary
Given an event in UDB3
 When the lower boundary of the typicalAgeRange for this event is set to "%{lower boundary}"
  And the upper boundary of the typicalAgeRange for this event is left empty
 Then the JSON-LD typicalAgeRange property of this event equals "%{lower boundary}-"
  And the cdbxml agefrom property of this event equals "%{lower boundary}"
  And the cdbxml ageto property of this event is absent
 
 Examples:
      | lower boundary | upper boundary |
      | 3              |                |
      | 12             |                |
      | 18             |                |
      | 65             |                |

@issue-III-1735
Scenario: typicalAgeRange with only upper boundary
Given an event in UDB3
 When the lower boundary of the typicalAgeRange for this event is left empty
  And the upper boundary of the typicalAgeRange for this event is set to "%{upper boundary}"
 Then the JSON-LD typicalAgeRange property of this event equals "-%{upper boundary}"
  And the cdbxml agefrom property of this event is absent
  And the cdbxml ageto property of this event equals "%{upper boundary}"
  
 Examples:
      | lower boundary | upper boundary |
      |                | 4              |
      |                | 12             |
      |                | 17             |
      |                | 29             |

