// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {GoodSamaritanFactory} from "../src/factories/GoodSamaritanFactory.sol";
import {GoodSamaritan} from "../src/levels/GoodSamaritan.sol";

contract GoodSamaritanTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	GoodSamaritanFactory factory = new GoodSamaritanFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveGoodSamaritan() public {
	GoodSamaritan instance = GoodSamaritan(payable(levelAddress));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
