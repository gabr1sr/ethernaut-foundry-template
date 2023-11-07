// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {EthernautTest} from "./utils/EthernautTest-06.sol";
import {MotorbikeFactory} from "../src/factories/MotorbikeFactory.sol";
import {Motorbike} from "../src/levels/Motorbike.sol";

contract MotorbikeTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        MotorbikeFactory factory = new MotorbikeFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance{value: 0.001 ether}(factory);
    }

    function testSolveVault() public {
        Motorbike instance = Motorbike(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
