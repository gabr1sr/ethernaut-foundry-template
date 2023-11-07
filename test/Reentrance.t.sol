// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {EthernautTest} from "./utils/EthernautTest-06.sol";
import {ReentranceFactory} from "../src/factories/ReentranceFactory.sol";
import {Reentrance} from "../src/levels/Reentrance.sol";

contract ReentranceTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        ReentranceFactory factory = new ReentranceFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance{value: 0.001 ether}(factory);
    }

    function testSolveReentrance() public {
        Reentrance instance = Reentrance(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
