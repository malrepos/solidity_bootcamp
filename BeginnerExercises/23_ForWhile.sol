//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ForLoop {
    uint[] myArray;

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

    function addValueFor() external {
        for (uint i = 0; i < 10; i++) {
            myArray.push(i);
        }
    }
}
