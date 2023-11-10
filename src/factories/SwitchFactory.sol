// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {Switch} from "../levels/Switch.sol";

contract SwitchFactory is Level {
    function createInstance(address) public payable override returns (address) {
	return address(new Switch());
    }

    function validateInstance(address payable _instance, address) public view override returns (bool) {
	Switch instance = Switch(_instance);
	return instance.switchOn();
    }
}
