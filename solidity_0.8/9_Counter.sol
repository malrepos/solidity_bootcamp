//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Counter {
    uint public count;

    function IncrementCounter() external {
        count++;
    }

    function DecrementCounter() external {
        count--;
    }
}
