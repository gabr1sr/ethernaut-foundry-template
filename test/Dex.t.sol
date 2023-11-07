// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {DexFactory} from "../src/factories/DexFactory.sol";
import {Dex, SwappableToken} from "../src/levels/Dex.sol";

contract DexTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	DexFactory factory = new DexFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveDex() public {
	Dex instance = Dex(payable(levelAddress));
	SwappableToken token1 = SwappableToken(payable(instance.token1()));
	SwappableToken token2 = SwappableToken(payable(instance.token2()));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
