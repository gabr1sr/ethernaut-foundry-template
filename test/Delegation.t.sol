// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {DelegationFactory} from "../src/factories/DelegationFactory.sol";
import {Delegation} from "../src/levels/Delegation.sol";

contract DelegationTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        DelegationFactory factory = new DelegationFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveDelegation() public {
        Delegation instance = Delegation(payable(levelAddress));

	// insert your code here!

        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
