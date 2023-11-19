// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {GatekeeperTwo} from "../src/levels/GatekeeperTwo.sol";

contract GatekeeperTwoScript is Script {
    GatekeeperTwo public instance /* = GatekeeperTwo(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
