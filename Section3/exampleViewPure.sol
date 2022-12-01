//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleViewPure {
    uint public myStorageVar;

    function accessView() public view returns (uint) {
        return myStorageVar;
    }

    function accessPure(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
