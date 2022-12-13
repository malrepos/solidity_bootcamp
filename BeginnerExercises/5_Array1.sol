//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyArray1 {
    uint[4] data;

    function setArray() public {
        data = [12, 43, 42, 42];
    }

    function getArray() public view returns (uint[4] memory) {
        return data;
    }
}
