// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {Ethernaut} from "../../src/base/Ethernaut.sol";

abstract contract EthernautTest is Test {
    Ethernaut public ethernaut;
    address public levelAddress;

    function setUp() public {
        ethernaut = new Ethernaut();
    }
}
