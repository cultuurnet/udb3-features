Feature: show 'For Members' on /preview

  @issue-III-1816
  Scenario Outline: Preview of an event for members
    Given an user
    When he visits /event/<cdbid>/preview
    And this event has 'members' as audienceType
    Then he sees a row with information 'Toegang 	Enkel voor leden'
