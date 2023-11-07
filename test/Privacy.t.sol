// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {PrivacyFactory} from "../src/factories/PrivacyFactory.sol";
import {Privacy} from "../src/levels/Privacy.sol";

contract PrivacyTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        PrivacyFactory factory = new PrivacyFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolvePrivacy() public {
        Privacy instance = Privacy(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
