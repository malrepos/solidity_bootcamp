//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleMsg {
    address public myAddress;

    function updateAddress() public {
        myAddress = msg.sender;
    }
}
