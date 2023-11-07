// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {NaughtCoinFactory} from "../src/factories/NaughtCoinFactory.sol";
import {NaughtCoin} from "../src/levels/NaughtCoin.sol";

contract NaughtCoinTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        NaughtCoinFactory factory = new NaughtCoinFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveNaughtCoin() public {
        NaughtCoin instance = NaughtCoin(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
