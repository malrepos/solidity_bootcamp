//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FixedSizeArray {
    uint[5] myArray;

    function addValues(uint _index, uint _value) external {
        require(_index < myArray.length - 1, "Index out of range");
        myArray[_index] = _value;
    }

    function getValues() external view returns (uint[5] memory) {
        return myArray;
    }
}
