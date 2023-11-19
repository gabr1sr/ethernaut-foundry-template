// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Script, console} from "forge-std/Script.sol";
import {Token} from "../src/levels/Token.sol";

contract TokenScript is Script {
    Token public instance /* = Token(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
