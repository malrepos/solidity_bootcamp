//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayTest {
    string[] public myArray;

    function updateElement(string memory _value) external {
        myArray.push(_value);
    }

    function getValues() external view returns (string[] memory) {
        return myArray;
    }
}
