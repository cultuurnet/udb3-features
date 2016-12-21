<?php

namespace CultuurNet\UDB3Features;

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\TableNode;

class CdbXmlContext implements Context
{
    /**
     * @Then the cdbxml private property of this event equals :arg1
     */
    public function theCdbxmlPrivatePropertyOfThisEventEquals($arg1)
    {

    }

    /**
     * @Then the cdbxml private property of this event is removed
     * @Then the cdbxml private property of this event is missing
     */
    public function theCdbxmlPrivatePropertyOfThisEventIsRemoved()
    {

    }

    /**
     * @Then the cdbxml of this event contains the following categories:
     */
    public function theCdbxmlOfThisEventContainsTheFollowingCategories(TableNode $table)
    {

    }

    /**
     * @Then the cdbxml of this event does not contain the category :arg1
     */
    public function theCdbxmlOfThisEventDoesNotContainTheCategory($arg1)
    {

    }
}
