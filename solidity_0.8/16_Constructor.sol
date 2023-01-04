//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Constructor {
    address public owner;
    uint public x;

    constructor() {
        owner = msg.sender;
        x = block.timestamp;
    }
}
