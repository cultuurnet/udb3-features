Feature: import of contactInfo from UDB2 to UDB3 for event and place

  @issue-III-1636
  Scenario: parse UDB2 contact info format to UDB3 contact and booking info format for event
    Given an event in UDB2
    And in UDB2 the cdbxml of this event has the following contactinfo:
    """
    <contactinfo>
      <phone type="phone">0473233773</phone>
      <phone type="phone" reservation="true">987654321</cdb:phone>
      <url reservation="true">http://www.test.be</url>
      <url>http://google.be</url>
      <mail>bibliotheek@hasselt.be</mail>
      <mail reservation="true">tickets@test.com</mail>
    </contactinfo>
    """
    When this event is imported in UDB3
    Then the JSON-LD contactPoint property of this event equals:
    """
    {
      "phone": ["0473233773"],
      "email": ["bibliotheek@hasselt.be"],
      "url": ["http://google.be"]
    }
    """
    And the JSON-LD bookingInfo property of this event equals:
    """
    {
      "phone":"987654321",
      "email":"tickets@test.com",
      "url":"http://www.test.be",
      "urlLabel":"Reserveer plaatsen"
    }
    """

  Scenario: parse UDB2 contact info format to UDB3 contact and booking info format for place
    Given a place in UDB2
    And in UDB2 the cdbxml of this place has the following contactinfo:
    """
    <contactinfo>
      <phone type="phone">0473233773</phone>
      <phone type="phone" reservation="true">987654321</cdb:phone>
      <url reservation="true">http://www.test.be</url>
      <url>http://google.be</url>
      <mail>bibliotheek@hasselt.be</mail>
      <mail reservation="true">tickets@test.com</mail>
    </contactinfo>
    """
    When this place is imported in UDB3
    Then the JSON-LD contactPoint property of this place equals:
    """
    {
      "phone": ["0473233773"],
      "email": ["bibliotheek@hasselt.be"],
      "url": ["http://google.be"]
    }
    """
    And the JSON-LD bookingInfo property of this place equals:
    """
    {
      "phone":"987654321",
      "email":"tickets@test.com",
      "url":"http://www.test.be",
      "urlLabel":"Reserveer plaatsen"
    }
    """