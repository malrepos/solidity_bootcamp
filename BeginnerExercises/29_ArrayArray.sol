//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArrayInArray {
    string[][] public myArray1;
    string[] myArray2 = ["Fuck", "you"];
    string[] myArray3 = ["c'mon", "keep going"];

    function addArrays() external {
        myArray1.push(myArray2);
        myArray1.push(myArray3);
    }

    function getArray() public view returns (string[][] memory) {
        return myArray1;
    }
}
