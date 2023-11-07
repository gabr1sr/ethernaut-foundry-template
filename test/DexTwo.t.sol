// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {DexTwoFactory} from "../src/factories/DexTwoFactory.sol";
import {DexTwo, SwappableTokenTwo} from "../src/levels/DexTwo.sol";

contract DexTwoTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	DexTwoFactory factory = new DexTwoFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveDexTwo() public {
	DexTwo instance = DexTwo(payable(levelAddress));
	SwappableTokenTwo token1 = SwappableTokenTwo(payable(instance.token1()));
	SwappableTokenTwo token2 = SwappableTokenTwo(payable(instance.token2()));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
