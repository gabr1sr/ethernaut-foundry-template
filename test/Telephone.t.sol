// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {TelephoneFactory} from "../src/factories/TelephoneFactory.sol";
import {Telephone} from "../src/levels/Telephone.sol";

contract TelephoneTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        TelephoneFactory factory = new TelephoneFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveTelephone() public {
	Telephone instance = Telephone(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
