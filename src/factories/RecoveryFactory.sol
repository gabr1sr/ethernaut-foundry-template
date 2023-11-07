// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {Recovery} from "../levels/Recovery.sol";

contract RecoveryFactory is Level {
    mapping(address => address) public lostAddress;

    function createInstance(address) public payable override returns (address) {
        require(msg.value >= 0.001 ether, "Must send at least 0.001 ETH");
        Recovery recoveryInstance = new Recovery();
        recoveryInstance.generateToken("InitialToken", 100_000);
        lostAddress[address(recoveryInstance)] = address(
            uint160(uint256(keccak256(abi.encodePacked(uint8(0xd6), uint8(0x94), recoveryInstance, uint8(0x01)))))
        );
        (bool success,) = lostAddress[address(recoveryInstance)].call{value: msg.value}("");
        require(success);
        return address(recoveryInstance);
    }

    function validateInstance(address payable _instance, address) public view override returns (bool) {
        return address(lostAddress[_instance]).balance == 0;
    }
}
