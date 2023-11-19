// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {NaughtCoin} from "../src/levels/NaughtCoin.sol";

contract NaughtCoinScript is Script {
    NaughtCoin public instance /* = NaughtCoin(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
