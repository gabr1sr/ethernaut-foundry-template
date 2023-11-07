// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {ShopFactory} from "../src/factories/ShopFactory.sol";
import {Shop} from "../src/levels/Shop.sol";

contract ShopTest is EthernautTest {
    function setUp() public override {
	super.setUp();
	ShopFactory factory = new ShopFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveShop() public {
        Shop instance = Shop(payable(levelAddress));

	// insert your code here!
	
	assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
