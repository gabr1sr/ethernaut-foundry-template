// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {GatekeeperOne} from "../src/levels/GatekeeperOne.sol";

contract GatekeeperOneScript is Script {
    GatekeeperOne public instance /* = GatekeeperOne(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
