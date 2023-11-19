// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Fallback} from "../src/levels/Fallback.sol";

contract FallbackScript is Script {
    Fallback public instance /* = Fallback(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
