//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract While {
    uint[] public myArray;

    function addValue() external {
        uint i = 0;
        while (i < 5) {
            myArray.push(i);
            i++;
        }
    }

    function getValue() external view returns (uint[] memory) {
        return myArray;
    }
}
