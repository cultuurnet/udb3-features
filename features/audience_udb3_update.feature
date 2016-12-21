Feature: update event with audience

  Scenario: update event from audience 'everyone' to audience 'members'
    Given an event in UDB3
    And this event has the value audience:'everyone'
    When this event is updated with audience 'members'
    Then this event has the following value in cdbXML event header tag:
    """
    private=true
    """

  Scenario: update event from audience 'everyone' to audience 'education'
    Given an event in UDB3
    And this event has the value audience:'everyone'
    When this event is updated with audience 'education'
    Then this event has the following value in cdbXML event header tag:
    """
    private=true
    """"
    And this event has the following category in cdbXML categories tag:
    """
    <category catid="2.1.3.0.0" type="targetaudience">Scholen</category>
    """

  Scenario: update event from audience 'members' to audience 'everyone'
    Given an event in UDB3
    And this event has the value audience:'members'
    When this event is updated with audience 'everyone'
    Then the following value is removed from cdbXML event header tag:
    """
    private=true
    """

  Scenario: update event from audience 'members' to audience 'education'
    Given an event in UDB3
    And this event has the value audience:'members'
    When this event is updated to audience 'education'
    Then this event has the following value in cdbXML event header tag:
    """
    private=true
    """
    And this event has the following category in cdbXML:
    """
    <category catid="2.1.3.0.0" type="targetaudience">Scholen</category>
    """

  Scenario: update event from audience 'education' to audience 'everyone'
    Given an event in UDB3
    And this event has the value audience:'education'
    When this event is updated with audience 'everyone'
    Then the following value is removed from cdbXML:
    """
    private=true
    """
    And the following category in cdbXML is removed:
    """
    <category catid="2.1.3.0.0" type="targetaudience">Scholen</category>
    """


  Scenario: update event from audience 'education' to audience 'members'
    Given an event in UDB3
    And this event has the value audience:'education'
    When this event is updated to audience 'members'
    Then this event has the following value in cdbXML:
    """
    private=true
    """
    And the following category in cdbXML is removed:
    """
    <category catid="2.1.3.0.0" type="targetaudience">Scholen</category>
    """


  Scenario: update event without audience to audience 'members'
    Given an event in UDB3
    And this event has no audience
    When this event is updated with audience 'members'
    Then this event has the following value in cdbXML:
    """
    private=true
    """

  Scenario: update event without audience to audience 'education'
    Given an event in UDB3
    And this event has no audience
    When this event is updated with audience 'education'
    Then this event has the following value in cdbXML:
    """
    private=true
    """
    And this event has the following category in cdbXML:
    """
    <category catid="2.1.3.0.0" type="targetaudience">Scholen</category>
    """

  Scenario: update event without targetAudience to audience 'everyone'
    Given an event in UDB3
    And this event has no audience
    When this event is updated with audience 'everyone'
    Then the following value is removed from cdbXML:
    """
    private=true
    """