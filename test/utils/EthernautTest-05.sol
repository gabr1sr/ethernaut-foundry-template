// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "./DSTest-05.sol";

contract EthernautTest is DSTest {
    Ethernaut public ethernaut;
    address public levelAddress;

    function setUp() public {
        ethernaut = new Ethernaut();
    }
}
