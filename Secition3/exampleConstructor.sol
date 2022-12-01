//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleConstructor {
    address public myAddress;

    constructor(address _myAddress) {
        myAddress = _myAddress;
    }

    function setMyAddress(address _myAddress) public {
        myAddress = _myAddress;
    }

    function setMsgMyAddress() public {
        myAddress = msg.sender;
    }

    // if we want to assign myAddress to another address at deployment time
    // we need to use a contructor
}
