//SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "./utils/EthernautTest-05.sol";
import "../src/factories/AlienCodexFactory.sol";
import "../src/levels/AlienCodex.sol";

contract AlienCodexTest is EthernautTest {
    function setUp() public {
	super.setUp();
	AlienCodexFactory factory = new AlienCodexFactory();
	ethernaut.registerLevel(factory);
	levelAddress = ethernaut.createLevelInstance(factory);
    }

    function testSolveAlienFactory() public {
	address payable payableLevelAddress = address(uint160(levelAddress));
	AlienCodex instance = AlienCodex(payableLevelAddress);
	
        // insert your code here!

	assert(ethernaut.submitLevelInstance(payableLevelAddress));
    }
}
