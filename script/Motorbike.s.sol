// SPDX-License-Identifier: MIT
pragma solidity <0.7.0;

import {Script, console} from "forge-std/Script.sol";
import {Motorbike, Engine} from "../src/levels/Motorbike.sol";

contract MotorbikeScript is Script {
    Motorbike public instance /* = Motorbike(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
