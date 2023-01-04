//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForandWhile {
    function Loops() external pure {
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }
        }
        uint a = 0;
        while (a < 10) {
            a++;
        }
    }

    function sum(uint _n) external pure returns (uint) {
        uint s;
        for (uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}
