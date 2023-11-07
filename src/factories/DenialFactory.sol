// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {Denial} from "../levels/Denial.sol";

contract DenialFactory is Level {
    uint256 public initialDeposit = 0.001 ether;
    
    function createInstance(address) public payable override returns (address) {
	require(msg.value >= initialDeposit);
	Denial instance = new Denial();
	(bool success, ) = address(instance).call{value: msg.value}("");
	require(success);
	return address(instance);
    }

    function validateInstance(address payable _instance, address) public override returns (bool) {
	Denial instance = Denial(_instance);
	if (address(instance).balance <= 100 wei) {
	    return false;
	}

	(bool success, ) = address(instance).call{gas: 1_000_000}(abi.encodeWithSignature("withdraw()"));
	return !success;
    }

    receive() external payable {}
}
