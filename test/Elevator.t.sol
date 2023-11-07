// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {ElevatorFactory} from "../src/factories/ElevatorFactory.sol";
import {Elevator} from "../src/levels/Elevator.sol";

contract ElevatorTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        ElevatorFactory factory = new ElevatorFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveElevator() public {
        Elevator instance = Elevator(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
