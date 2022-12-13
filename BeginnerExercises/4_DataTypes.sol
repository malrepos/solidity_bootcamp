//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DataTypes {
    uint public number1 = 52;
    int public number2 = -63;
    uint8 public number3 = 253;
    bool public isTrue = false;
    address public myAccount = msg.sender;
    string public wordOne = "Hello World";
    bytes32 public wordTwo = "Hello World";
}
