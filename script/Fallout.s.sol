// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {Fallout} from "../src/levels/Fallout.sol";

contract FalloutScript is Script {
    Fallout public instance /* = Fallout(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
