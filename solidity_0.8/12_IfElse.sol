//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IfElse {
    function Example(uint _x) external pure returns (uint) {
        if (_x > 10) {
            return 11;
        } else {
            return 2;
        }
    }

    function ternary(uint _x) external pure returns (string memory) {
        return (_x > 10) ? "Hell yeah" : "Oh no";
    }
}
