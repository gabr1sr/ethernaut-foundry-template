// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Level} from "../base/Level-06.sol";
import {Token} from "../levels/Token.sol";

contract TokenFactory is Level {
    uint256 public supply = 21000000;
    uint256 public playerSupply = 20;

    function createInstance(address _player) public payable override returns (address) {
        Token token = new Token(supply);
        token.transfer(_player, playerSupply);
        return address(token);
    }

    function validateInstance(address payable _instance, address _player) public override returns (bool) {
        Token token = Token(_instance);
        return token.balanceOf(_player) > playerSupply;
    }
}
