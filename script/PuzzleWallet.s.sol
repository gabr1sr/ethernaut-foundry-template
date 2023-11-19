// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script, console} from "forge-std/Script.sol";
import {PuzzleProxy, PuzzleWallet} from "../src/levels/PuzzleWallet.sol";

contract PuzzleWalletScript is Script {
    PuzzleWallet public instance /* = PuzzleWallet(payable(address here)) */;

    function run() external {
	vm.startBroadcast();

	// insert your solution here
	
	vm.stopBroadcast();
    }
}
