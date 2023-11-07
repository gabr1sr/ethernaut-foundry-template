// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {FallbackFactory} from "../src/factories/FallbackFactory.sol";
import {Fallback} from "../src/levels/Fallback.sol";

contract FallbackTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        FallbackFactory factory = new FallbackFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveFallback() public {
        Fallback instance = Fallback(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
