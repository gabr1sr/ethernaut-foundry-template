// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import "../src/levels/GatekeeperThree.sol";

contract GatekeeperThreeScript is Script {
    GatekeeperThree public instance /* = GatekeeperThree(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
