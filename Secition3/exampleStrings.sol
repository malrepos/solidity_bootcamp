//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleStrings {
    string public myString = "Hello World";

    bytes public myBytes = "Hello World";

    function setMyString(string memory _myString) public {
        myString = _myString;
    }

    // in order to compare 2 strings
    // we need to use keccak256 and abi.encodePacked

    function compareStrings(
        string memory _myString
    ) public view returns (bool) {
        return
            keccak256(abi.encodePacked(myString)) ==
            keccak256(abi.encodePacked(_myString));
        // we are not comparing the strings
        //we are comparing the hashes of the strings
    }
}
