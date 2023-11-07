// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {EthernautTest} from "./utils/EthernautTest-06.sol";
import {TokenFactory} from "../src/factories/TokenFactory.sol";
import {Token} from "../src/levels/Token.sol";

contract TokenTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        TokenFactory factory = new TokenFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveToken() public {
        Token instance = Token(payable(levelAddress));

	// insert your code here!

        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
