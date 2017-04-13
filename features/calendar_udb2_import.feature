# update json examplefiles with correct daylight savings time for used start- and enddate (+02:00 or +01:00)
# json calendartype single/multiple deprecated? change examplefiles!

Feature: import calendar info from cdbxml to json


@issue-III-2033
Scenario: import event with one timestamp: date, no timestart or timeend
 Given an event in udb2
  And this event only has one timestamp
  And the date for this timestamp equals "%{startDate}"
  And timestart and timeend are absent for this timestamp
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

 Examples:
    | nr  | startDate  |
    | 101 | 2017-05-21 |


@issue-III-2033
Scenario: import event with one timestamp: date + timestart, no timeend
 Given an event in udb2
  And this event only has one timestamp
  And the date for this timestamp equals "%{startDate}"
  And timestart for this timestamp equals "%{timeStart}"
  And timeend for this timestamp is absent
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate  | timeStart |
    | 201 | 2017-05-21 | 10:00:00  |
    | 202 | 2017-06-03 | 09:30:00  |
    | 203 | 2017-07-15 | 11:11:11  |
    


@issue-III-2033
Scenario: import event with one timestamp: date + timestart + timeend
 Given an event in udb2
  And this event only has one timestamp
  And the date for this timestamp equals "%{startDate}"
  And timestart for this timestamp equals "%{timeStart}"
  And timeend for this timestamp equals "%{timeEnd}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate  | timeStart | timeEnd  |
    | 301 | 2017-05-21 | 10:00:00  | 11:00:00 |
    | 302 | 2017-06-03 | 09:30:00  | 16:00:00 |
    | 303 | 2017-11-11 | 11:11:11  | 23:11:11 |
    | 304 | 2017-12-31 | 21:00:00  | 05:00:00 |


@issue-III-2033
Scenario: import event with multiple timestamps: dates, no timestart or timeend
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And the date for the second timestamp equals "%{startDate2}"
  And the date for the third timestamp equals "%{startDate3}"
  And timestart and timeend are absent for all these timestamps
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

 Examples:
    | nr  | startDate1 | startDate2 | startDate3 |
    | 401 | 2017-05-21 | 2017-06-21 | 2017-07-21 |

@issue-III-2033
Scenario: import event with multiple timestamps: dates + timestart, no timeend
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp is absent
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp is absent
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate1 | timeStart1 | startDate2 | timeStart2 |
    | 501 | 2017-05-21 | 10:00:00   | 2017-06-21 | 10:00:00   |


@issue-III-2033
Scenario: import event with multiple timestamps: dates + timestart + timeend
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp is absent
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp is absent
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb3_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate1 | timeStart1 | timeEnd1 | startDate2 | timeStart2 | timeEnd2 |
    | 601 | 2017-05-21 | 10:00:00   | 11:30:00 | 2017-06-21 | 10:00:00   | 11:30:00 |



@issue-III-2033
Scenario: import event with multiple timestamps: mixed: only dates, with or without timestart/timeend

@issue-III-2033
Scenario: import event with period: datefrom + dateto, no weekscheme

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme only openingtimes from

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme openingtimes from + to

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme mix openingtimes from + to

@issue-III-2033
Scenario: import permanent event, no weekscheme as periodic event

@issue-III-2033
Scenario: import permanent event with weekscheme only openingtimes from

@issue-III-2033
Scenario: import permanent event with weekscheme openingtimes from + to

@issue-III-2033
Scenario: import permanent event with weekscheme mix openingtimes from + to


@issue-III-2033
Scenario: import event with multiple timestamps with specific timeformat as one subevent

@issue-III-2033
Scenario: import event with multiple timestamps with specific timeformat as multiple subevents