<?php

namespace CultuurNet\UDB3Features;

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;

class EventContext implements Context
{
    /**
     * @Given an event
     */
    public function anEvent()
    {

    }

    /**
     * Updates the audience of an event.
     *
     * Example: When the audience of this event is updated to "everyone"
     * Example: When the audience of this event is updated to "members"
     * Example: When the audience of this event is updated to "education"
     *
     * @Given /the audience of this event is updated to "(?P<target>everyone|members|education)"/
     */
    public function theAudienceOfThisEventIsUpdatedTo($target)
    {

    }

    /**
     * Updates the description of an event.
     * Example: When the description of this event is updated to:
     *   """
     *   Lorem ipsum dolor sit amet, consectetur adipiscing elit.
     *   Quasi ego id curem, quid ille aiat
     *   """
     *
     * @When the description of this event is updated to:
     */
    public function theDescriptionOfThisEventIsUpdatedTo(PyStringNode $string)
    {

    }
}
