//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Events {
    event Log(string message, uint val);
    event indexedLod(address indexed sender, uint val);

    function example() external {
        emit Log("foo", block.timestamp);
        emit indexedLod(msg.sender, 123);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata _message) external {
        emit Message(msg.sender, _to, _message);
    }
}
