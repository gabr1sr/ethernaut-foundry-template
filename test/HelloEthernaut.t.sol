// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {HelloEthernautFactory} from "../src/factories/HelloEthernautFactory.sol";
import {Instance} from "../src/levels/HelloEthernaut.sol";

contract HelloEthernautTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        HelloEthernautFactory factory = new HelloEthernautFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveHelloEthernaut() public {
        Instance instance = Instance(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
