// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {MagicNum} from "../src/levels/MagicNum.sol";

contract MagicNumScript is Script {
    MagicNum public instance /* = MagicNum(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
