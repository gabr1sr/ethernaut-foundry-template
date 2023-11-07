// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {EthernautTest} from "./utils/EthernautTest-06.sol";
import {FalloutFactory} from "../src/factories/FalloutFactory.sol";
import {Fallout} from "../src/levels/Fallout.sol";

contract FalloutTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        FalloutFactory factory = new FalloutFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveFallout() public {
        Fallout instance = Fallout(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
