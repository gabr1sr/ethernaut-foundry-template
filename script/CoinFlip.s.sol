// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {CoinFlip} from "../src/levels/CoinFlip.sol";

contract CoinFlipScript is Script {
    CoinFlip public instance /* = CoinFlip(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
