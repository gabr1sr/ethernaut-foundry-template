// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "openzeppelin-contracts-08/access/Ownable.sol";

abstract contract Level is Ownable {
    function createInstance(address player) public payable virtual returns (address);
    function validateInstance(address payable instance, address player) public virtual returns (bool);
}
