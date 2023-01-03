//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ValueTypes {
    bool public b = true;
    uint public u = 123;
    int public i = -321;
    uint public maxuint = type(uint).max;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32;
}
