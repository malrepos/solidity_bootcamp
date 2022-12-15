//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FixedArrayMem {
    //uint[5] memory myArray

    function createArray() external pure returns (uint[5] memory) {
        uint[5] memory myArray;
        for (uint i = 0; i < myArray.length; i++) {
            myArray[i] = i ** 2;
        }
        return myArray;
    }
}
