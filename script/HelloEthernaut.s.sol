// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {Instance} from "../src/levels/HelloEthernaut.sol";

contract HelloEthernautScript is Script {
    Instance public instance = Instance(payable(/* instance address here */));

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
