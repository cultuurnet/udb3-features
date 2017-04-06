Feature: set startDate and endDate with new calendar

    
@issue-III-2032
Scenario: event with one timestamp, starts and ends on same day
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the timeStart for this event is set to "%{timeStart}"
  And the endDate for this event is set to "%{endDate}"
  And the timeEnd for this event is set to "%{timeEnd}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
    And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"

  
 Examples:
    | nr | startDate  | timeStart | endDate    | timeEnd  |
    | 1  | 2017-05-21 | 10:00:00  | 2017-05-21 | 11:00:00 | 
    | 2  | 2017-06-03 | 09:30:00  | 2017-06-03 | 16:00:00 |
    | 3  | 2017-07-15 | 20:00:00  | 2017-07-15 | 23:00:00 |
    | 4  | 2017-11-11 | 11:11:11  | 2017-11-11 | 23:11:11 |