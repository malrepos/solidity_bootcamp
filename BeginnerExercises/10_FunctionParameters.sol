//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Parameter {
    string public myWord = "food";

    function setValue(string memory _newWord) external {
        myWord = _newWord;
    }
}
