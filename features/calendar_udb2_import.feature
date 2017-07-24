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
    | nr  | calendartype | startDate  |
    | 101 | timestamps   | 2017-05-21 |


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
    | nr  | calendartype | startDate  | timeStart |
    | 201 | timestamps   | 2017-05-21 | 10:00:00  |
    | 202 | timestamps   | 2017-06-03 | 09:30:00  |
    | 203 | timestamps   | 2017-07-15 | 11:11:11  |
    


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
    | nr  | calendartype | startDate  | timeStart | timeEnd  |
    | 301 | timestamps   | 2017-05-21 | 10:00:00  | 11:00:00 |
    | 302 | timestamps   | 2017-06-03 | 09:30:00  | 16:00:00 |
    | 303 | timestamps   | 2017-11-11 | 11:11:11  | 23:11:11 |
    | 304 | timestamps   | 2017-12-31 | 21:00:00  | 05:00:00 |


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
    | nr  | calendartype | startDate1 | startDate2 | startDate3 |
    | 401 | timestamps   | 2017-05-21 | 2017-06-21 | 2017-07-21 |

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
    | nr  | calendartype | startDate1 | timeStart1 | startDate2 | timeStart2 |
    | 501 | timestamps   | 2017-05-21 | 10:00:00   | 2017-06-21 | 10:00:00   |


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
    | nr  | calendartype | startDate1 | timeStart1 | timeEnd1 | startDate2 | timeStart2 | timeEnd2 |
    | 601 | timestamps   | 2017-05-21 | 10:00:00   | 11:30:00 | 2017-06-21 | 10:00:00   | 11:30:00 |



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
    | nr  | calendartype | startDate1 | startDate2 | timeStart2 | startDate3 | timeStart3 | timeEnd3 |
    | 701 | timestamps   | 2017-05-21 | 2017-06-21 | 11:30:00   | 2017-07-21 | 10:00:00   | 11:30:00 |


@issue-III-2033
Scenario: import event with multiple timestamps with specific timeformat as calendarType single
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
    | nr  | calendartype | startDate1 | timeStart1 | startDate2 | timeStart2 | timeEnd2 | startDate3 | timeStart3 | timeEnd3 |
    | 801 | timestamps   | 2017-05-21 | 10:00:01   | 2017-05-22 | 00:00:01   | EMPTY    | 2017-05-23 | 00:00:01   | 16:00:00 |
    | 802 | timestamps   | 2017-07-20 | 20:00:01   | 2017-07-21 | 00:00:01   | 20:00:00 |
    | 803 | timestamps   | 2017-07-20 | 20:00:01   | 2017-07-21 | 00:00:01   | 21:00:00 |


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
    | nr  | calendartype | startDate1 | timeStart1 | startDate2 | timeStart2 | startDate3 | timeStart3 | timeEnd3 | startDate4 | timeStart4 | startDate5 | timeStart5 | startDate6 | timeStart6 | timeEnd6 |
    | 901 | timestamps   | 2017-05-21 | 10:00:01   | 2017-05-22 | 00:00:01   | 2017-05-23 | 00:00:01   | 16:00:00 | 2017-06-24 | 10:00:02   | 2017-06-25 | 00:00:02   | 2017-06-26 | 00:00:02   | 16:00:00 |
 
 
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
    | nr   | calendartype | startDate1 | timeStart1 | timeEnd1 | startDate2 | timeStart2 | timeEnd2 | startDate3 | timeStart3 | startDate4 | timeStart4 | startDate5 | timeStart5 | timeEnd5 |
    | 1001 | timestamps   | 2017-05-21 | 10:00:00   | 16:00:00 | 2017-05-21 | 20:00:00   | 01:00:00 | 2017-06-23 | 10:00:01   | 2017-06-24 | 00:00:01   | 2017-06-25 | 00:00:01   | 16:00:00 |
 

@issue-III-2033
Scenario: import event with period: datefrom + dateto, no weekscheme
 Given an event in udb2
  And this event has calendartype period
  And datefrom for this event equals "%{startDate}"
  And dateto for this event equals "%{endDate}"
  And weekscheme for this event is absent
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
  
 Examples:
    | nr   | calendartype | startDate  | endDate    |
    | 1101 | periods      | 2017-09-01 | 2017-12-31 |

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme only openingtimes from
 Given an event in udb2
  And this event has calendartype period
  And datefrom for this event equals "%{startDate}"
  And dateto for this event equals "%{endDate}"
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"


 Examples:
    | nr   | calendartype | startDate  | endDate    | dayOfWeek1     | opens1 | dayOfWeek2  | opens2 |
    | 1201 | periods      | 2017-09-01 | 2017-12-31 | mo,thu,fri,sat | 20:30  | sun         | 16:00  |
    

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme openingtimes from + to
 Given an event in udb2
  And this event has calendartype period
  And datefrom for this event equals "%{startDate}"
  And dateto for this event equals "%{endDate}"
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}" to "%{closes1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}" to "%{closes2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
  
Examples:
   | nr   | calendartype | startDate  | endDate    | dayOfWeek1     | opens1 | closes1 | dayOfWeek2  | opens2 | closes2 |
   | 1301 | periods      | 2017-09-01 | 2017-12-31 | mo,thu,fri,sat | 20:30  | 22:30   | sun         | 16:00  | 20:00   |

@issue-III-2033
Scenario: import event with period: datefrom + dateto + weekscheme mix openingtimes from + to
 Given an event in udb2
  And this event has calendartype period
  And datefrom for this event equals "%{startDate}"
  And dateto for this event equals "%{endDate}"
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}" to "%{closes1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
  
 Examples:
   | nr   | calendartype | startDate  | endDate    | dayOfWeek1     | opens1 | closes1 | dayOfWeek2  | opens2 |
   | 1401 | periods      | 2017-09-01 | 2017-12-31 | mo,thu,fri,sat | 20:30  | 22:30   | sun         | 16:00  |

@issue-III-2033
Scenario: import permanent event, no weekscheme as periodic event
 Given an event in udb2
  And this event has calendartype permanent
  And the weekscheme for this event is absent
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

 Examples: 
    | nr   | calendartype |
    | 1501 | permanent    |

@issue-III-2033
Scenario: import permanent event with weekscheme only openingtimes from
 Given an event in udb2
  And this event has calendartype permanent
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"

 Examples:
    | nr   | calendartype | dayOfWeek1     | opens1 | dayOfWeek2  | opens2 |
    | 1601 | permanent    | mo,thu,fri,sat | 20:30  | sun         | 16:00  |

@issue-III-2033
Scenario: import permanent event with weekscheme openingtimes from + to
 Given an event in udb2
  And this event has calendartype permanent
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}" to "%{closes1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}" to "%{closes2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
  
Examples:
   | nr   | calendartype | dayOfWeek1     | opens1 | closes1 | dayOfWeek2  | opens2 | closes2 |
   | 1701 | permanent    | mo,thu,fri,sat | 20:30  | 22:30   | sun         | 16:00  | 20:00   |

@issue-III-2033
Scenario: import permanent event with weekscheme mix openingtimes from + to
 Given an event in udb2
  And this event has calendartype permanent
  And the weekscheme for this event contains "%{dayOfWeek1}" from "%{opens1}" to "%{closes1}"
  And the weekscheme for this event contains "%{dayOfWeek2}" from "%{opens2}"
 When this event is imported in UDB3
 Then the JSON-LD calendar property of this event equals "calendar_udb2_import_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb2_import_example_%{nr}.xml"
  
Examples:
   | nr   | calendartype | dayOfWeek1     | opens1 | closes1 | dayOfWeek2  | opens2 |
   | 1801 | permanent    | mo,thu,fri,sat | 20:30  | 22:30   | sun         | 16:00  |
