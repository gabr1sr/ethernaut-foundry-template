// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {GatekeeperThreeFactory} from "../src/factories/GatekeeperThreeFactory.sol";
import {GatekeeperThree} from "../src/levels/GatekeeperThree.sol";

contract GatekeeperThreeTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	GatekeeperThreeFactory factory = new GatekeeperThreeFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveGatekeeperThree() public {
	GatekeeperThree instance = GatekeeperThree(payable(levelAddress));

	// insert your code here!

	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
