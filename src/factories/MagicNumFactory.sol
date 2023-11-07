// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {MagicNum} from "../levels/MagicNum.sol";

interface Solver {
    function whatIsTheMeaningOfLife() external view returns (bytes32);
}

contract MagicNumFactory is Level {
    function createInstance(address) public payable override returns (address) {
	return address(new MagicNum());
    }

    function validateInstance(address payable _instance, address) public view override returns (bool) {
	MagicNum instance = MagicNum(_instance);
	Solver solver = Solver(instance.solver());
	bytes32 magic = solver.whatIsTheMeaningOfLife();
	if (magic != 0x000000000000000000000000000000000000000000000000000000000000002a) return false;

	uint256 size;
	assembly {
        size := extcodesize(solver)
	}
        return !(size > 10);
    }
}
