//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Array {
    uint[] public myArray = [1, 2, 3];
    uint[5] public myFixedArray = [7, 8, 9, 5, 4];

    function onArray() public {
        myArray.push(43);
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }

    function deleteArray(uint _index) external {
        delete myArray[_index];
    }

    function popArray() external {
        myArray.pop();
    }
}
