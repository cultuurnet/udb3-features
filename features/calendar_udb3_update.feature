Feature: set startDate and endDate with new calendar


@issue-III-2032
Scenario: event with one timestamp, start and enddate on same day
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the timeStart for this event is set to "%{timeStart}"
  And the endDate for this event is set to "%{endDate}"
  And the timeEnd for this event is set to "%{timeEnd}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate  | timeStart | endDate    | timeEnd  |
    | 101 | 2017-05-21 | 10:00:00  | 2017-05-21 | 11:00:00 |
    | 102 | 2017-06-03 | 09:30:00  | 2017-06-03 | 16:00:00 |
    | 103 | 2017-07-15 | 20:00:00  | 2017-07-15 | 23:00:00 |


@issue-III-2032
Scenario: event with one timestamp, enddate one day later
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the timeStart for this event is set to "%{timeStart}"
  And the endDate for this event is set to "%{endDate}"
  And the timeEnd for this event is set to "%{timeEnd}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate  | timeStart | endDate    | timeEnd  |
    | 201 | 2017-05-26 | 21:00:00  | 2017-05-27 | 02:00:00 |
    | 202 | 2018-03-27 | 00:00:00  | 2018-03-28 | 00:00:00 |

@issue-III-2032
Scenario: event with multiple timestamps, start and enddate on same day
 Given an event in UDB3
 When the first startDate for this event is set to "%{startDate1}"
  And the first timeStart for this event is set to "%{timeStart1}"
  And the first endDate for this event is set to "%{endDate1}"
  And the first timeEnd for this event is set to "%{timeEnd1}"
  And the second startDate for this event is set to "%{startDate2}"
  And the second timeStart for this event is set to "%{timeStart2}"
  And the second endDate for this event is set to "%{endDate2}"
  And the second timeEnd for this event is set to "%{timeEnd2}"
  And the third startDate for this event is set to "%{startDate3}"
  And the third timeStart for this event is set to "%{timeStart3}"
  And the third endDate for this event is set to "%{endDate3}"
  And the third timeEnd for this event is set to "%{timeEnd3}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate1  | timeStart1 | endDate1    | timeEnd1  | startDate2  | timeStart2 | endDate2    | timeEnd2  | startDate3  | timeStart3 | endDate3    | timeEnd3  |
    | 301 | 2017-05-21  | 10:00:00   | 2017-05-21  | 12:00:00  | 2017-05-21  | 14:00:00   | 2017-05-21  | 16:30:00  | 2017-05-21  | 18:00:00   | 2017-05-21  | 20:00:00  |


@issue-III-2032
Scenario: event with multiple timestamps, enddate one day later
 Given an event in UDB3
 When the first startDate for this event is set to "%{startDate1}"
  And the first timeStart for this event is set to "%{timeStart1}"
  And the first endDate for this event is set to "%{endDate1}"
  And the first timeEnd for this event is set to "%{timeEnd1}"
  And the second startDate for this event is set to "%{startDate2}"
  And the second timeStart for this event is set to "%{timeStart2}"
  And the second endDate for this event is set to "%{endDate2}"
  And the second timeEnd for this event is set to "%{timeEnd2}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate1  | timeStart1 | endDate1    | timeEnd1  | startDate2  | timeStart2 | endDate2    | timeEnd2  |
    | 401 | 2017-05-25  | 22:00:00   | 2017-05-26  | 01:00:00  | 2017-05-26  | 22:00:00   | 2017-05-27  | 01:00:00  |

@issue-III-2032
Scenario: event with one timestamp, enddate more than one day later
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the timeStart for this event is set to "%{timeStart}"
  And the endDate for this event is set to "%{endDate}"
  And the timeEnd for this event is set to "%{timeEnd}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate  | timeStart | endDate    | timeEnd  |
    | 501 | 2017-05-25 | 10:00:00  | 2017-05-27 | 16:00:00 |
    | 502 | 2017-06-01 | 00:00:00  | 2017-06-03 | 00:00:00 |
    | 503 | 2017-09-01 | 09:00:00  | 2017-09-10 | 17:30:00 |

@issue-III-2032
Scenario: event with multiple timestamps, start and enddate more than one day apart
 Given an event in UDB3
 When the first startDate for this event is set to "%{startDate1}"
  And the first timeStart for this event is set to "%{timeStart1}"
  And the first endDate for this event is set to "%{endDate1}"
  And the first timeEnd for this event is set to "%{timeEnd1}"
  And the second startDate for this event is set to "%{startDate2}"
  And the second timeStart for this event is set to "%{timeStart2}"
  And the second endDate for this event is set to "%{endDate2}"
  And the second timeEnd for this event is set to "%{timeEnd2}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"


 Examples:
    | nr  | startDate1  | timeStart1 | endDate1    | timeEnd1  | startDate2  | timeStart2 | endDate2    | timeEnd2  |
    | 601 | 2017-05-25  | 10:00:00   | 2017-05-27  | 16:00:00  | 2017-06-28  | 10:00:00   | 2017-06-30  | 16:00:00  |
    | 602 | 2017-05-25  | 10:00:00   | 2017-05-27  | 16:00:00  | 2017-05-24  | 10:00:00   | 2017-05-26  | 16:00:00  |

@issue-III-2032
Scenario: event with multiple timestamps (MIX): start and enddate on the same day, enddate one day later, enddate more than one day later
 Given an event in UDB3
 When the first startDate for this event is set to "%{startDate1}"
  And the first timeStart for this event is set to "%{timeStart1}"
  And the first endDate for this event is set to "%{endDate1}"
  And the first timeEnd for this event is set to "%{timeEnd1}"
  And the second startDate for this event is set to "%{startDate2}"
  And the second timeStart for this event is set to "%{timeStart2}"
  And the second endDate for this event is set to "%{endDate2}"
  And the second timeEnd for this event is set to "%{timeEnd2}"
  And the third startDate for this event is set to "%{startDate3}"
  And the third timeStart for this event is set to "%{timeStart3}"
  And the third endDate for this event is set to "%{endDate3}"
  And the third timeEnd for this event is set to "%{timeEnd3}"
 Then the JSON-LD calendar property of this event equals "calendar_udb3_update_example_%{nr}.json"
  And the cdbxml calendar property of this event equals "calendar_udb3_update_example_%{nr}.xml"

 Examples:
    | nr  | startDate1  | timeStart1 | endDate1    | timeEnd1  | startDate2  | timeStart2 | endDate2    | timeEnd2  | startDate3  | timeStart3 | endDate3    | timeEnd3  |
    | 701 | 2017-05-25  | 10:00:00   | 2017-05-25  | 16:00:00  | 2017-05-25  | 20:00:00   | 2017-05-26  | 01:00:00  | 2017-06-28  | 10:00:00   | 2017-06-30  | 16:00:00  |

@issue-III-2032
Scenario: periodic event with one set of openinghours
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the endDate for this event is set to "%{endDate}"
  And the first set of openinghours are set to "%{dayOfWeek}" from "%{opens} to "%{closes}"

 Examples:
    | nr  | startDate  | endDate    | dayOfWeek   | opens  | closes  |
    | 801 | 2017-09-01 | 2017-12-31 | mo          | 08:00  | 10:00   |

@issue-III-2032
Scenario: periodic event with multiple sets of openinghours
 Given an event in UDB3
 When the startDate for this event is set to "%{startDate}"
  And the endDate for this event is set to "%{endDate}"
  And the first set of openinghours are set to "%{dayOfWeek1}" from "%{opens1}" to "%{closes1}"
  And the second set of openinghours are set to "%{dayOfWeek2}" from "%{opens2}" to "%{closes2}"
  And the third set of openinghours are set to "%{dayOfWeek3}" from "%{opens3}" to "%{closes3}"
  And the fourth set of openinghours are set to "%{dayOfWeek4}" from "%{opens4}" to "%{closes4}"

 Examples:
    | nr  | startDate  | endDate    | dayOfWeek1  | opens1 | closes1 | dayOfWeek2  | opens2 | closes2 | dayOfWeek3  | opens3 | closes3 | dayOfWeek4  | opens4 | closes4 |
    | 901 | 2017-03-01 | 2017-03-31 | mo, we      | 08:00  | 10:00   | mo          | 12:00  | 14:00   | mo          | 18:00  | 22:00   | tu          | 10:00  | 13:00   |
