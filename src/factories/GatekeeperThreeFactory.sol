// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {GatekeeperThree} from "../levels/GatekeeperThree.sol";

contract GatekeeperThreeFactory is Level {
    function createInstance(address) public payable override returns (address) {
	return address(new GatekeeperThree());
    }

    function validateInstance(address payable _instance, address _player) public view override returns (bool) {
	GatekeeperThree instance = GatekeeperThree(_instance);
	return instance.entrant() == _player;
    }
}
