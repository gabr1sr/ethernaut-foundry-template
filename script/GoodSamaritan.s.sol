// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import "../src/levels/GoodSamaritan.sol";

contract GoodSamaritanScript is Script {
    GoodSamaritan public instance /* = GoodSamaritan(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
