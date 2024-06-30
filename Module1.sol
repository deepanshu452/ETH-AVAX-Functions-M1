// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract PermissionControl {
    address public controller;

    constructor() {
        controller = msg.sender;
    }

    function verifyController() public view {
        require(msg.sender == controller, "Only the controller can call this function.");
    }

    function validateController() public view {
        if (msg.sender != controller) {
            revert("The caller is not the controller.");
        }
    }

    function assertController() public view {
        assert(msg.sender == controller);
    }
}
