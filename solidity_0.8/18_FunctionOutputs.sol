//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FunctionOutputs {
    function multiOutputs() public view returns (address, uint) {
        return (msg.sender, block.timestamp);
    }

    function namedOutputs() public view returns (address sender, uint time) {
        return (msg.sender, block.timestamp);
    }

    function assigned() public view returns (address sender, uint time) {
        sender = msg.sender;
        time = block.timestamp;
    }

    function destructuredAssignments() public {
        (address x, uint y) = namedOutputs();
    }
}
