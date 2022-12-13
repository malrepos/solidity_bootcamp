//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TestArray {
    string[] public myArray;

    function addValue(string memory _value) public {
        myArray.push(_value);
    }

    function getValue() public view returns (string[] memory) {
        return myArray;
    }
}
