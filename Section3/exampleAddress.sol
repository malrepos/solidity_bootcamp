//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleAddress {
    address public exampleAddress;

    function setAddress(address _exampleAddress) public {
        exampleAddress = _exampleAddress;
    }

    function getBalnce() public view returns (uint) {
        return exampleAddress.balance;
    }
}
