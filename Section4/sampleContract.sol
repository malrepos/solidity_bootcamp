//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract SampleContract {
    address thisAddress = address(this);

    string public myString = "Hello World";

    function setMessage(string memory _myString) public payable {
        if (msg.value >= 100 wei) {
            myString = _myString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }

    function getBalance() public view returns (uint) {
        return thisAddress.balance;
    }
}
