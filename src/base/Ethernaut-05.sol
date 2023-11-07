// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "./helpers/Ownable-05.sol";
import "./Level-05.sol";

contract Ethernaut is Ownable {
    event LevelInstanceCreatedLog(address indexed player, address indexed instance, address indexed level);

    event LevelCompletedLog(address indexed player, address indexed instance, address indexed level);
    
    struct EmittedInstanceData {
	address player;
	Level level;
	bool completed;
    }
    
    mapping(address => bool) public registeredLevels;

    mapping(address => EmittedInstanceData) public emittedInstances;

    function registerLevel(Level level) public onlyOwner {
	registeredLevels[address(level)] = true;
    }

    function createLevelInstance(Level level) public payable returns (address) {
	// Ensure level is registered.
	require(registeredLevels[address(level)], "This level doesn't exists");

	// Get level factory to create an instance.
	address instance = level.createInstance(msg.sender);

	// Store emitted instance relationship with player and level.
	emittedInstances[instance] = EmittedInstanceData(msg.sender, level, false);

	// Retrieve created instance via logs.
	emit LevelInstanceCreatedLog(msg.sender, instance, address(level));

	return instance;
    }

    function submitLevelInstance(address payable instance) public returns (bool) {
	// Get player and level.
	EmittedInstanceData storage data = emittedInstances[instance];

	require(data.player == msg.sender, "This instance doesn't belong to the current user"); // instance was emitted for this player
	require(data.completed == false, "Level has been completed already"); // not already submitted

	// Have the level check the instance.
	if (data.level.validateInstance(instance, msg.sender)) {
	    // Register instance as completed.
	    data.completed = true;

	    // Notify success via logs.
	    emit LevelCompletedLog(msg.sender, instance, address(data.level));

	    return true;
	} else {
	    return false;
	}
    }
}
