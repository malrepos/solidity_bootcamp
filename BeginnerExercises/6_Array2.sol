//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayExercise {
    uint[4] myArray1;
    uint[] myArray2 = new uint[](3);

    function setValues() external {
        myArray2 = [55, 66, 88];
    }

    function getArray() public view returns (uint[] memory) {
        return myArray2;
    }

    function updateValue() public {
        myArray2[0] = 1;
    }
}
