//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayShift {
    uint[] public myArray = [1, 2, 3];

    function remove(uint _index) public {
        require(_index < myArray.length, "Index out of bounds");
        for (uint i = _index; i < myArray.length - 1; i++) {
            myArray[i] = myArray[i + 1];
        }
        myArray.pop();
    }

    function getArray() external view returns (uint[] memory) {
        return myArray;
    }
}
