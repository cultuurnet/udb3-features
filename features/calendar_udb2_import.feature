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
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

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
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

  
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
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

  
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
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

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
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate1 | timeStart1 | startDate2 | timeStart2 |
    | 501 | 2017-05-21 | 10:00:00   | 2017-06-21 | 10:00:00   |


@issue-III-2033
Scenario: import event with multiple timestamps: dates + timestart + timeend
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp equals "%{timeEnd1}"
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp equals "%{timeEnd2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

  
 Examples:
    | nr  | startDate1 | timeStart1 | timeEnd1 | startDate2 | timeStart2 | timeEnd2 |
    | 601 | 2017-05-21 | 10:00:00   | 11:30:00 | 2017-06-21 | 10:00:00   | 11:30:00 |



@issue-III-2033
Scenario: import event with multiple timestamps: mixed: dates, with or without timestart/timeend
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart and timeend are absent for the first timestamp
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp is absent
  And the date for the third timestamp equals "%{startDate3}"
  And timestart for the third timestamp equals "%{timeStart3}"
  And timeend for the third timestamp equals "%{timeEnd3}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

 Examples:
    | nr  | startDate1 | startDate2 | timeStart2 | startDate3 | timeStart3 | timeEnd3 |
    | 701 | 2017-05-21 | 2017-06-21 | 11:30:00   | 2017-07-21 | 10:00:00   | 11:30:00 |


@issue-III-2033
Scenario: import event with multiple timestamps with specific timeformat as one subevent
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp is absent
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp is absent
  And the date for the third timestamp equals "%{startDate3}"
  And timestart for the third timestamp equals "%{timeStart3}"
  And timeend for the third timestamp equals "%{timeEnd3}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

 Examples:
    | nr  | startDate1 | timeStart1 | startDate2 | timeStart2 | startDate3 | timeStart3 | timeEnd3 |
    | 801 | 2017-05-21 | 10:00:01   | 2017-05-22 | 00:00:01   | 2017-05-23 | 00:00:01   | 16:00:00 |


@issue-III-2033
Scenario: import event with multiple timestamps with specific timeformat as multiple subevents
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp is absent
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp is absent
  And the date for the third timestamp equals "%{startDate3}"
  And timestart for the third timestamp equals "%{timeStart3}"
  And timeend for the third timestamp equals "%{timeEnd3}"
  And the date for the fourth timestamp equals "%{startDate4}"
  And timestart for the fourth timestamp equals "%{timeStart4}"
  And timeend for the fourth timestamp is absent
  And the date for the fifth timestamp equals "%{startDate5}"
  And timestart for the fifth timestamp equals "%{timeStart5}"
  And timeend for the fifth timestamp is absent
  And the date for the sixth timestamp equals "%{startDate6}"
  And timestart for the sixth timestamp equals "%{timeStart6}"
  And timeend for the sixth timestamp equals "%{timeEnd6}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

 Examples:
    | nr  | startDate1 | timeStart1 | startDate2 | timeStart2 | startDate3 | timeStart3 | timeEnd3 | startDate4 | timeStart4 | startDate5 | timeStart5 | startDate6 | timeStart6 | timeEnd6 |
    | 901 | 2017-05-21 | 10:00:01   | 2017-05-22 | 00:00:01   | 2017-05-23 | 00:00:01   | 16:00:00 | 2017-06-24 | 10:00:01   | 2017-06-25 | 00:00:01   | 2017-06-26 | 00:00:01   | 16:00:00 |
 
 
@issue-III-2033
Scenario: import event with multiple timestamps: mixed: dates with or without timestart/timeend and dates with specific timeformat imported as subevent
 Given an event in udb2
  And this event has multiple timestamps
  And the date for the first timestamp equals "%{startDate1}"
  And timestart for the first timestamp equals "%{timeStart1}"
  And timeend for the first timestamp equals "%{timeEnd1}"
  And the date for the second timestamp equals "%{startDate2}"
  And timestart for the second timestamp equals "%{timeStart2}"
  And timeend for the second timestamp equals "%{timeEnd2}"
  And the date for the third timestamp equals "%{startDate3}"
  And timestart for the third timestamp equals "%{timeStart3}"
  And timeend for the third timestamp is absent
  And the date for the fourth timestamp equals "%{startDate4}"
  And timestart for the fourth timestamp equals "%{timeStart4}"
  And timeend for the fourth timestamp is absent
  And the date for the fifth timestamp equals "%{startDate5}"
  And timestart for the fifth timestamp equals "%{timeStart5}"
  And timeend for the fifth timestamp equals "%{timeEnd5}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
 
 
 Examples:
    | nr   | startDate1 | timeStart1 | timeEnd1 | startDate2 | timeStart2 | timeEnd2 | startDate3 | timeStart3 | startDate4 | timeStart4 | startDate5 | timeStart5 | timeEnd5 |
    | 1001 | 2017-05-21 | 10:00:00   | 16:00:00 | 2017-05-21 | 20:00:00   | 01:00:00 | 2017-06-23 | 10:00:01   | 2017-06-24 | 00:00:01   | 2017-06-25 | 00:00:01   | 16:00:00 |
 

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
