// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Recovery} from "../src/levels/Recovery.sol";

contract RecoveryScript is Script {
    Recovery public instance /* = Recovery(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
