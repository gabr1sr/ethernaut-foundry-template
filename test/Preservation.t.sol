// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {PreservationFactory} from "../src/factories/PreservationFactory.sol";
import {Preservation} from "../src/levels/Preservation.sol";

contract PreservationTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        PreservationFactory factory = new PreservationFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolvePreservation() public {
        Preservation instance = Preservation(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
