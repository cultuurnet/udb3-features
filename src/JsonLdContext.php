<?php

namespace CultuurNet\UDB3Features;

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;

class JsonLdContext implements Context
{
    /**
     * @Then the JSON-LD typicalAgeRange property of this event equals :arg1
     */
    public function theTypicalAgeRangePropertyOfThisEventEquals($arg1)
    {

    }

    /**
     * @Then the JSON-LD audience property of this event equals :arg1
     */
    public function theAudiencePropertyOfThisEventEquals($arg1)
    {

    }

    /**
     * @Then the JSON-LD contactPoint property of this event equals:
     */
    public function theContactpointPropertyOfThisEventEquals(PyStringNode $string)
    {

    }

    /**
     * @Then the JSON-LD bookingInfo property of this event equals:
     */
    public function theBookinginfoPropertyOfThisEventEquals(PyStringNode $string)
    {

    }

    /**
     * @Then the JSON-LD description property of this event contains/has the following value for language :langcode:
     */
    public function theDescriptionPropertyOfThisEventContainsTheFollowingValueForLanguage($langcode, PyStringNode $string)
    {

    }
}
