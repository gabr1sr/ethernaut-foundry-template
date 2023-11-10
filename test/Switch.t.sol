// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {SwitchFactory} from "../src/factories/SwitchFactory.sol";
import {Switch} from "../src/levels/Switch.sol";

contract SwitchTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	SwitchFactory factory = new SwitchFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveSwitch() public {
	Switch instance = Switch(payable(levelAddress));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
