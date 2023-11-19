// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";

interface AlienCodex {
    function makeContact() external;
    function retract() external;
    function revise(uint, bytes32) external;
    function owner() external view returns (address);
}

contract AlienCodexScript is Script {
    AlienCodex public instance /* = AlienCodex(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
