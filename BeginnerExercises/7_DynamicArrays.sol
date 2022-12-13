//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract DynamicArrays {
    string[] myArray1;

    function setArray(string memory _myString) public {
        myArray1 = [_myString];
    }

    function getArray() public view returns (string[] memory) {
        return myArray1;
    }
}
