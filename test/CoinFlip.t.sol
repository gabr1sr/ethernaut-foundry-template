// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {CoinFlipFactory} from "../src/factories/CoinFlipFactory.sol";
import {CoinFlip} from "../src/levels/CoinFlip.sol";

contract CoinFlipTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        CoinFlipFactory factory = new CoinFlipFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveCoinFlip() public {
	CoinFlip instance = CoinFlip(payable(levelAddress));

        // insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
