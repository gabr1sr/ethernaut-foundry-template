// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {RecoveryFactory} from "../src/factories/RecoveryFactory.sol";
import {Recovery, SimpleToken} from "../src/levels/Recovery.sol";

contract RecoveryTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        RecoveryFactory factory = new RecoveryFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance{value: 0.001 ether}(factory);
    }

    function testSolveRecovery() public {
        Recovery instance = Recovery(payable(levelAddress));

	// insert your code here!

        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
