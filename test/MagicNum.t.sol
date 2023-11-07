// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {MagicNumFactory} from "../src/factories/MagicNumFactory.sol";
import {MagicNum} from "../src/levels/MagicNum.sol";

contract MagicNumTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	MagicNumFactory factory = new MagicNumFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveMagicNum() public {
	MagicNum instance = MagicNum(payable(levelAddress));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
