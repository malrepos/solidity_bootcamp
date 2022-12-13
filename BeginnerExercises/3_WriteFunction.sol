//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract WriteFunction {
    uint public myNumber = 43;

    function setNumber(uint _num) public {
        myNumber = _num;
    }
}
