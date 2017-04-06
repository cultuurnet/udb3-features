Feature: set startDate and endDate with new calendar

    
@issue-III-2032
Scenario: event with one timestamp, starts and ends on same day
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the timeStart for this event is set to "%{timeStart}"
  And the endDate for this event is set to "%{endDate}"
  And the timeEnd for this event is set to "%{timeEnd}"
 Then the JSON-LD startDate property of this event equals "%{startDate}T%{timeStart}+02:00"
  And the JSON-LD endDate property of this event equals "%{endDate}T%{timeEnd}+02:00"
  And the cdbxml calendar property one timestamp
  And the cdbxml timestamp/date property of this event equals "%{startDate}"
  And the cdbxml timestamp/timestart property of this event equals "%{timeStart}"
  And the cdbxml timestamp/timeend property of this event equals "%{timeEnd}"

  
 Examples:
      | startDate  | timeStart | endDate    | timeEnd  |
      | 2017-05-21 | 10:00:00  | 2017-05-21 | 11:00:00 |
      | 2017-06-03 | 09:30:00  | 2017-06-03 | 16:00:00 |
      | 2017-07-15 | 20:00:00  | 2017-05-21 | 23:00:00 |
      | 2017-11-11 | 11:11:11  | 2017-11-11 | 23:11:11 |