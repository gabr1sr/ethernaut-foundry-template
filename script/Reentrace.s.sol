// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {Reentrance} from "../src/levels/Reentrance.sol";

contract ReentranceScript is Script {
    Reentrance public instance /* = Reentrance(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
