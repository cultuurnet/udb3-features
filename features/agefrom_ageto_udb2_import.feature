Feature: UDB2 cdbxml agefrom & ageto gets projected to JSON-LD typicalAgeRange property.  

@issue-1735
Scenario: import event without agefrom/ageto
Given an event in UDB2
  And in UDB2 the cdbxml agefrom attribute of this event is absent
  And in UDB2 the cdbxml ageto attribute of this event is absent
 When this event is imported in UDB3
 Then this event does not contain the JSON-LD typicalAgeRange property
 

@issue-1735
Scenario: import event with only agefrom
 Given an event in UDB2
  And in UDB2 the cdbxml agefrom attribute of this event equals "%{lower boundary}"
 When this event is imported in UDB3
 Then the JSON-LD typicalAgeRange property of this event equals "%{lower boundary}-"
 
 Examples:
      | agefrom |
      | 0       |
      | 1       |
      | 3       |
      | 11  	|
      | 18      |
      | 55      |
      | 101     |


@issue-1735
Scenario: import event with agefrom and ageto
Given an event in UDB2
  And in UDB2 the cdbxml agefrom attribute of this event equals "%{lower boundary}"
  And in UDB2 the cdbxml ageto attribute of this event equals "%{upper boundary}"
 When this event is imported in UDB3
 Then the JSON-LD typicalAgeRange property of this event equals "%{lower boundary}-%{upper boundary}"
 
 Examples:
      | agefrom | ageto   |
      | 0       | 1       |
      | 1       | 3       |
      | 4       | 6       |
      | 11  	| 14      |
      | 18      | 24      |
      | 55      | 81      |
      | 0       | 101     |


@issue-1735
Scenario: import event with only ageto
 Given an event in UDB2
  And in UDB2 the cdbxml ageto attribute of this event equals "%{upper boundary}"
 When this event is imported in UDB3
 Then the JSON-LD typicalAgeRange property of this event equals "-%{upper boundary}"
 
 Examples:
      | ageto   |
      | 1       |
      | 3       |
      | 6       |
      | 11  	|
      | 16      |
      | 30      |
      | 55      |
