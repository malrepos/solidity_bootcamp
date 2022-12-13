//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayContract {
    string[] myArray; // initilize a dynamic array

    function setValues() external {
        myArray = ["flowers", "Christmas"]; // set some initial values to array
    }

    function addValue(string memory _newValue) public {
        myArray.push(_newValue); // add a new value from function parameter
    }

    function getValues() public view returns (string[] memory) {
        return myArray; // get array
    }
}
