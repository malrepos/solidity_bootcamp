//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Messenger {
    string public myString;
    address public owner = msg.sender;
    uint public counter;

    function setMessage(string memory _myString) public {
        require(msg.sender == owner, "You do not have permission.");
        myString = _myString;
        counter++;
    }
}
