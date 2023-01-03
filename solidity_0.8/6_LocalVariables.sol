//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract LocalVariables {
    uint public i;
    address public myAddress;

    function foo() external {
        uint x = 123;

        x += 456;

        i = 123;
        myAddress = address(1);
    }
}
