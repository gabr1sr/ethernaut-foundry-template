// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Level} from "../base/Level-06.sol";
import {Motorbike, Engine} from "../levels/Motorbike.sol";
import {Address} from "openzeppelin-contracts-06/utils/Address.sol";

contract MotorbikeFactory is Level {
    mapping(address => address) private engines;
    
    function createInstance(address) public payable override returns (address) {
	Engine engine = new Engine();
	Motorbike motorbike = new Motorbike(address(engine));
	engines[address(motorbike)] = address(engine);

	require(keccak256(Address.functionCall(address(motorbike), abi.encodeWithSignature("upgrader()"))) == keccak256(abi.encode(address(this))), "Wrong upgrader address");

	require(keccak256(Address.functionCall(address(motorbike), abi.encodeWithSignature("horsePower()"))) == keccak256(abi.encode(uint256(1000))), "Wrong horsePower");

	return address(motorbike);
    }

    function validateInstance(address payable _instance, address) public override returns (bool) {
	return !Address.isContract(engines[_instance]);
    }
}
