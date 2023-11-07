// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {GatekeeperTwoFactory} from "../src/factories/GatekeeperTwoFactory.sol";
import {GatekeeperTwo} from "../src/levels/GatekeeperTwo.sol";

contract GatekeeperTwoTest is EthernautTest {
    GatekeeperTwoFactory public factory;

    function setUp() public override {
	super.setUp();
        factory = new GatekeeperTwoFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveGatekeeperTwo() public {
        GatekeeperTwo instance = GatekeeperTwo(payable(levelAddress));

	// insert your code here!
	
        assert(factory.validateInstance(payable(levelAddress), tx.origin));
    }
}
