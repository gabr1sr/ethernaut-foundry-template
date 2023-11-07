// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {GatekeeperOneFactory} from "../src/factories/GatekeeperOneFactory.sol";
import {GatekeeperOne} from "../src/levels/GatekeeperOne.sol";

contract GatekeeperOneTest is EthernautTest {
    GatekeeperOneFactory public factory;

    function setUp() public override {
	super.setUp();
        factory = new GatekeeperOneFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveGatekeeperOne() public {
	GatekeeperOne instance = GatekeeperOne(payable(levelAddress));
	
	// insert your code here!
	
        assert(factory.validateInstance(payable(levelAddress), tx.origin));
    }
}
