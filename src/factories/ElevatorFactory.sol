// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {Elevator} from "../levels/Elevator.sol";

contract ElevatorFactory is Level {
    function createInstance(address _player) public payable override returns (address) {
        _player;
        Elevator instance = new Elevator();
        return address(instance);
    }

    function validateInstance(address payable _instance, address) public view override returns (bool) {
        Elevator instance = Elevator(_instance);
        return instance.top();
    }
}
