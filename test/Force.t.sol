// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {ForceFactory} from "../src/factories/ForceFactory.sol";
import {Force} from "../src/levels/Force.sol";

contract ForceTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        ForceFactory factory = new ForceFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveForce() public {
        Force instance = Force(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
