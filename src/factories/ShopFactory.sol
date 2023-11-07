// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level} from "../base/Level.sol";
import {Shop} from "../levels/Shop.sol";

contract ShopFactory is Level {
    function createInstance(address) public payable override returns (address) {
	Shop shop = new Shop();
	return address(shop);
    }

    function validateInstance(address payable _instance, address) public view override returns (bool) {
	Shop shop = Shop(_instance);
	return shop.price() < 100;
    }
}
