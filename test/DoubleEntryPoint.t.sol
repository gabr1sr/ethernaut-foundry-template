// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {DoubleEntryPointFactory} from "../src/factories/DoubleEntryPointFactory.sol";
import {DoubleEntryPoint} from "../src/levels/DoubleEntryPoint.sol";

contract DoubleEntryPointTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        DoubleEntryPointFactory factory = new DoubleEntryPointFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveDoubleEntryPoint() public {
        DoubleEntryPoint instance = DoubleEntryPoint(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
