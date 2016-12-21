<?php

namespace CultuurNet\UDB3Features;

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

class CdbXmlContext implements Context
{
    /**
     * @Then the cdbxml private attribute of this event equals :arg1
     */
    public function theCdbxmlPrivateAttributeOfThisEventEquals($arg1)
    {

    }

    /**
     * @Then the cdbxml private attribute of this event is removed/absent
     */
    public function theCdbxmlPrivateAttributeOfThisEventIsRemoved()
    {

    }

    /**
     * @Then the cdbxml of this event contains the following categories:
     */
    public function theCdbxmlOfThisEventContainsTheFollowingCategories(TableNode $table)
    {

    }

    /**
     * @Then the cdbxml of this event does not contain the category :catid
     */
    public function theCdbxmlOfThisEventDoesNotContainTheCategory($catid)
    {

    }

    /**
     * @Then the cdbxml of this event has the following shortdescription:
     */
    public function theCdbxmlOfThisEventHasTheFollowingShortdescription(PyStringNode $string)
    {

    }

    /**
     * @Then the cdbxml of this event has the following longdescription:
     */
    public function theCdbxmlOfThisEventHasTheFollowingLongdescription(PyStringNode $string)
    {

    }
}
