// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {DexTwo} from "../src/levels/DexTwo.sol";

contract DexTwoScript is Script {
    DexTwo public instance /* = DexTwo(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
