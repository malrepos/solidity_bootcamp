//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StringComparison {
    function compare(
        string memory _newString
    ) external pure returns (string memory) {
        string memory myString = "apple";
        if (keccak256(bytes(myString)) == keccak256(bytes(_newString))) {
            return "right word";
        } else {
            return "wrong word";
        }
    }

    function compare2(
        string memory _newString
    ) external pure returns (string memory) {
        string memory myString = "apple";
        if (
            keccak256(abi.encodePacked(myString)) ==
            keccak256(abi.encodePacked(_newString))
        ) {
            return "right word";
        } else {
            return "wrong word";
        }
    }
}
