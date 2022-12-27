//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract errorManage {
    uint a = 5;

    function foo(uint _b) external returns (uint) {
        require(_b > 3, "Too small");
        a = a * _b;
        return a;
    }
}
