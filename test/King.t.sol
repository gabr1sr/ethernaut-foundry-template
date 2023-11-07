// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {KingFactory} from "../src/factories/KingFactory.sol";
import {King} from "../src/levels/King.sol";

contract KingTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        KingFactory factory = new KingFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance{value: 0.001 ether}(factory);
    }

    function testSolveKing() public {
        King instance = King(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
