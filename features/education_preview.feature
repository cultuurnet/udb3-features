Feature: show Cultuurkuur-link on /preview

  @issue-III-1813
  Scenario Outline: Preview of an event for schools without educationfields and educationlevels
    Given an user
    When he visits /event/<cdbid>/preview
    And this event is created by him
    And this event has 'education' as audienceType
    And this event has no terms of the domain educationfield or educationlevel
    Then he sees a row with information 'Toegang 	Voor scholen'
    And a custom message:
    “””
    Vervolledig dit evenement op cultuurkuur.be met extra informatie voor scholen en leerkrachten.
    “””
    And a link ‘Doorgaan’ to cultuurkuur.be/event/<cdbid>/edit which opens in a new window


  @issue-III-1813
  Scenario Outline: Preview of an owned event for schools with educationfields or educationlevels
    Given an user
    When he visits /event/<cdbid>/preview
    And this event is created by him
    And this event has 'education' as audienceType
    And this event has terms of the domains educationfield or educationlevel
    Then he sees a row with information 'Toegang	Voor scholen'
    And a success-message ‘Dit evenenement bevat extra informatie voor scholen en leerkrachten’
    And a panel with educationfield(s), educationlevel(s) and targetaudience 2.1.14.0.0 Leerlingen and targetaudience 2.1.13.0.0 Leerkrachten
    And a link ‘Wijzig op cultuurkuur.be’ to cultuurkuur.be/event/<cdbid>/edit


  @issue-III-1813
  Scenario: detailpage of an event for schools with educationfields or educationlevels
    Given an user
    When he visits /event/<cdbid>/preview
    And his event is not created by him
    And this event has 'education' as audienceType
    And this event has one or more terms of the domains educationfield or educationlevel
    Then he sees a row with information 'Toegang	Voor scholen'
    And a message ‘Dit evenenement bevat extra informatie voor scholen en leerkrachten’
    And a link to cultuurkuur.be/agenda/e//<cdbid>
