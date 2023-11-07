// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {EthernautTest} from "./utils/EthernautTest.sol";
import {PuzzleWalletFactory} from "../src/factories/PuzzleWalletFactory.sol";
import {PuzzleProxy} from "../src/levels/PuzzleWallet.sol";

contract PuzzleWalletTest is EthernautTest {
    function setUp() public override {
	super.setUp();
        PuzzleWalletFactory factory = new PuzzleWalletFactory();
        ethernaut.registerLevel(factory);
        levelAddress = ethernaut.createLevelInstance{value: 0.001 ether}(factory);
    }

    function testSolveVault() public {
        PuzzleProxy instance = PuzzleProxy(payable(levelAddress));

	// insert your code here!
	
        assert(ethernaut.submitLevelInstance(payable(levelAddress)));
    }
}
