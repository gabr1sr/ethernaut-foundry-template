// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Delegation} from "../src/levels/Delegation.sol";

contract DelegationScript is Script {
    Delegation public instance /* = Delegation(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
